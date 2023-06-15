<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function PostContact(Request $request)
    {
    	date_default_timezone_set("Asia/Kolkata");
    	$contact_date = date("h:i:sa");
    	$contact_time = date('d-m-Y');

    	$result = Contact::insert([
    		'name' => $request->input('name'),
    		'email' => $request->input('email'),
    		'message' => $request->input('message'),
    		'contact_date' => $contact_date,
    		'contact_time' => $contact_time
    	]);

    	return $result;
    }

	public function GetAllMessage()
	{
		$message = Contact::orderBy('id', 'DESC')->get();
		return view('backend.contact.contact_all', compact('message'));
	}

	public function DeleteMessage($id)
	{
		Contact::findOrFail($id)->delete();
		$notification = array(
			'message' => 'Message deleted successfully!',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);
	}
}
