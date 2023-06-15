<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HomeSlider;
use Image;

class SliderController extends Controller
{
    public function index(){
    	$result = HomeSlider::all();
    	return $result;
    }

    public function GetAllSilder(){
        $data = HomeSlider::latest()->get();
        return view('backend.slider.slider_view', compact('data'));
    }

    public function AddSilder(){
        return view('backend.slider.slider_add');
    }

    public function StoreSlider(Request $request){
        $request->validate([
            'slider_image' => 'required',
        ],[
            'slider_image.required' => 'Upload Slider Image'
        ]);

        $image = $request->file('slider_image');
        $file_name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(1024, 379)->save('upload/slider/'.$file_name_gen);
        $save_url = 'http://127.0.0.1:8000/upload/slider/'.$file_name_gen;

        HomeSlider::insert([
            'slider_image' => $save_url
        ]);

        $notification = array([
            'message' => 'Silder upload successfully.',
            'alert-type' => 'success'
        ]);

        return redirect()->route('all.slider')->with($notification); 
    }

    public function EditSlider($id){
        $data = HomeSlider::findOrFail($id);
        return view('backend.slider.slider_edit', compact('data'));
    }

    public function UpdateSlider(Request $request){

        $slider_id = $request->id;

        $request->validate([
            'slider_image' => 'required',
        ],[
            'slider_image.required' => 'Upload Slider Image'
        ]);

        $image = $request->file('slider_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(1024,379)->save('upload/slider/'.$name_gen);
        $save_url = 'http://127.0.0.1:8000/upload/slider/'.$name_gen;

        HomeSlider::findOrFail($slider_id)->update([          
            'slider_image' => $save_url,
        ]);

        $notification = array(
            'message' => 'Slider Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.slider')->with($notification);

    } // End Mehtod

    public function DeleteSlider($id){
        $result = HomeSlider::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Slider Delete Successfully',
            'alert-type' => 'warning'
        );

        return redirect()->route('all.slider')->with($notification);
    } 
}
