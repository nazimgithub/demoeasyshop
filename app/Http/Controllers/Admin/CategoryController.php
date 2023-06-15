<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;
use Image;

class CategoryController extends Controller
{
    public function AllCategory()
    {
        $categories = Category::all();
        $categoryDetailsArr = [];

        foreach ($categories as $value) {
        	$subcategory = Subcategory::where('category_name', $value['category_name'])->get();
        	$item = [
        		'category_name' => $value['category_name'],
        		'category_image' => $value['category_image'],
        		'subcategory_name' => $subcategory
        	];

        	array_push($categoryDetailsArr, $item);
        }
        return $categoryDetailsArr;
    }

    public function GetAllCategory(){
        $category = Category::latest()->get();
        return view('backend.category.category_view', compact('category')); 
    }

    public function AddCategory(){
        return view('backend.category.category_add');
    }

    public function StoreCategroy(Request $resquest){
        $resquest->validate([
            'category_name' => 'required',
        ],[
            'category_name.required' => 'Category name can not blank!'
        ]);

        $image = $resquest->file('category_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        $path = public_path('upload/category/' . $name_gen);

        Image::make($image)->resize(128, 128)->save($path);

        $save_url = 'http://127.0.0.1:8000/upload/category/'.$name_gen;

        Category::insert([
            'category_name' => $resquest->category_name,
            'category_image' => $save_url,
        ]);

        $notification = array(
            'message' => 'Categroy inserted successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('all.category')->with($notification);
    }

    public function EditCategory($id){
        $data = Category::findOrFail($id);
        return view('backend.category.category_edit', compact('data'));
    }

    public function UpdateCategroy(Request $request){
        $category_id = $request->id;

        if ($request->file('category_image'))
        {

            $image = $request->file('category_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(128,128)->save('upload/category/'.$name_gen);
            $save_url = 'http://127.0.0.1:8000/upload/category/'.$name_gen;

            Category::findOrFail($category_id)->update([
                'category_name' => $request->category_name,
                'category_image' => $save_url,
            ]);

            $notification = array(
                'message' => 'Category Update With Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('all.category')->with($notification);
        }else{
            Category::findOrFail($category_id)->update([
                'category_name' => $request->category_name,
            ]);

            $notification = array(
                'message' => 'Category Updateed Without Image Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('all.category')->with($notification);
        }
    }
    
    public function DeleteCategory($id){
        Category::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Category Deleted Successfully',
            'alert-type' => 'warning'
        );

        return redirect()->back()->with($notification);
    }//End Method 

    // Subcategory Method start here

    public function GetAllSubCategory(){
        $data = Subcategory::orderBy('id', 'DESC')->get();
        return view('backend.subcategory.subcategory_view', compact('data'));
    }

    public function AddSubCategory(){
        $category = Category::orderBy('id', 'DESC')->get();
        return view('backend.subcategory.subcategory_add', compact('category'));
    }

    public function StoreSubCategroy(Request $request){
        $request->validate([
            'category_name' => 'required',
            'subcategory_name' => 'required',
        ],[
            'category_name.required' => 'Category name can not blank!',
            'subcategory_name.required' => 'SubCategory name can not blank!',
        ]);

        $result = Subcategory::insert([
            'category_name' => $request->category_name,
            'subcategory_name' => $request->subcategory_name,
        ]);

        $notification = array([
            'message' => 'Subcategory inserted successfully.',
            'alert-type' => 'success'
        ]);

        return redirect()->route('all.subcategory')->with($notification);
    }

    public function EditSubcategory($id){

        $category = Category::orderBy('category_name', 'ASC')->get();
        $subcategory = Subcategory::findOrFail($id);
        return view('backend.subcategory.subcategory_update', compact('category','subcategory'));
    }

    public function UpdateSubCategroy(Request $request){

        $subcategoryId = $request->id;

        $request->validate([
            'category_name' => 'required',
            'subcategory_name' => 'required',
        ],[
            'category_name.required' => 'Category name can not blank!',
            'subcategory_name.required' => 'SubCategory name can not blank!',
        ]);

        $result = Subcategory::findOrFail($subcategoryId)->update([
            'category_name' => $request->category_name,
            'subcategory_name' => $request->subcategory_name,
        ]);

        $notification = array([
            'message' => 'Subcategory update successfully.',
            'alert-type' => 'success'
        ]);

        return redirect()->route('all.subcategory')->with($notification);    
    }

    public function DeleteSubCategory($id){
        SubCategory::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Subcategory Deleted Successfully',
            'alert-type' => 'warning'
        );

        return redirect()->back()->with($notification);
    }
}
