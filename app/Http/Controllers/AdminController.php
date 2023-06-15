<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Auth;
use App\Models\User;

class AdminController extends Controller
{
    public function AdminLogout(){

        Auth::logout();
        return Redirect()->route('login');

    } // end mehtod 


    public function UserProfile()
    {
    	$adminData = User::find(1);
    	return view('backend.admin.admin_profile', compact('adminData'));
    }

    public function UserProfileStore(Request $request)
    {
    	$data = User::find(1);
    	$data->name = $request->name;
    	$data->email = $request->email;

    	if($request->file('profile_photo_path')){
    		$file = $request->file('profile_photo_path');
    		@unlink(public_path('upload/admin_images'), $data->profile_photo_path);
    		$filename = date('YmdHi').$file->getClientOriginalName();
    		$file->move(public_path('upload/admin_images'), $filename);
    		$data['profile_photo_path'] = $filename;
    	}

    	$data->save();
    	$notification = array(
            'message' => 'User Profile Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('user.profile')->with($notification);
    }

    public function ChangePassword() {
    	return view('backend.admin.change_password');
    }

    public function ChangePasswordUpdate(Request $request){

    	// Get the currently authenticated user...
		$user = Auth::user();
		$user_id = $user->id; //or Auth::user()->id;
		
        $validateData = $request->validate([
            'oldpassword' => 'required',
            'password' => 'required|confirmed'
        ]);

        $hashedPassword = User::find($user_id)->password;
        if (Hash::check($request->oldpassword,$hashedPassword)) {
            $user = User::find($user_id);
            $user->password = Hash::make($request->password);
            $user->save();
            Auth::logout();

            return redirect()->route('admin.logout');
        }
        else{
            return redirect()->back();
        }

    } // end mehtod 


}
 