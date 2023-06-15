<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductList;
use App\Models\ProductDetail;
use App\Models\Category;
use App\Models\Subcategory;
use Image;

class ProductListController extends Controller
{
    public function ProductListByRemark(Request $request)
    {
    	$remark = $request->remark;
    	$productlist = ProductList::where('remark', $remark)->limit(8)->get();
    	return $productlist;
    }

    public function ProductListByCategory(Request $request)
    {
    	$category = $request->category;
    	$productlist = ProductList::where('category', $category)->get();
    	return $productlist;
    }

    public function ProductListBySubcategory(Request $request)
    {
    	$category = $request->category;
    	$subcategory = $request->subcategory;
    	$productlist = ProductList::where('category', $category)
    	->where('subcategory', $subcategory)
    	->get();
    	return $productlist;
    }

    public function ProductBySearch(Request $request)
    {
        $key = $request->key;
        $productlist = ProductList::where('title', 'LIKE', "%{$key}%")
        ->orWhere('brand', 'LIKE', "%{$key}%")
        ->orWhere('price', 'LIKE', "%{$key}%")
        ->orWhere('category', 'LIKE', "%{$key}%")
        ->orWhere('subcategory', 'LIKE', "%{$key}%")
        ->orWhere('remark', 'LIKE', "%{$key}%")
        ->orWhere('product_code', 'LIKE', "%{$key}%")
        ->get();
        return $productlist;
    }

    public function SimilarProduct(Request $request){
        $subcategory = $request->subcategory;
        $productlist = ProductList::where('subcategory', $subcategory)
        ->orderBy('id', 'desc')
        ->limit(6)
        ->get();

        return $productlist;
    }

    public function GetAllProduct(){
        $data = ProductList::latest()->paginate(5);
        return view('backend.product.product_view', compact('data'));
    }

    public function AddProduct(){
        $category = Category::orderBy('category_name', 'ASC')->get();
        $subcategory = Subcategory::orderBy('category_name', 'ASC')->get();
        return view('backend.product.product_add', compact('category', 'subcategory'));
    }

    public function StoreProduct(Request $request){
        $request->validate([
            'product_code' => 'required',
        ],[
            'product_code.required' => 'Enter product code'
        ]);

        $image = $request->file('image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(711, 960)->save('upload/product/'.$name_gen);

        $save_url = 'http://127.0.0.1:8000/upload/product/'.$name_gen;

        $product_id = ProductList::insertGetId([
            'title' => $request->title,
            'price' => $request->price,
            'special_price' => $request->special_price,
            'image' => $save_url,
            'category' => $request->category,
            'subcategory' => $request->subcategory,
            'remark' => $request->remark,
            'brand' => $request->brand,
            'star' => 4,
            'product_code' => $request->product_code,
        ]);

        // Code for image one start here
        $image1 = $request->file('image_one');
        $name_gen1 = hexdec(uniqid()).'.'.$image1->getClientOriginalExtension();
        Image::make($image1)->resize(711, 960)->save('upload/productdetails/'.$name_gen1);

        $save_url1 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen1;

        // Code for image two start here
        $image2 = $request->file('image_two');
        $name_gen2 = hexdec(uniqid()).'.'.$image2->getClientOriginalExtension();
        Image::make($image2)->resize(711, 960)->save('upload/productdetails/'.$name_gen2);

        $save_url2 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen2;

        // Code for image three start here
        $image3 = $request->file('image_three');
        $name_gen3 = hexdec(uniqid()).'.'.$image3->getClientOriginalExtension();
        Image::make($image3)->resize(711, 960)->save('upload/productdetails/'.$name_gen3);

        $save_url3 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen3;

        // Code for image four start here
        $image4 = $request->file('image_four');
        $name_gen4 = hexdec(uniqid()).'.'.$image4->getClientOriginalExtension();
        Image::make($image4)->resize(711, 960)->save('upload/productdetails/'.$name_gen4);

        $save_url4 = 'http://127.0.0.1:8000/upload/productdetails/'.$name_gen4;

        ProductDetail::insert([
            'product_id' => $product_id,
            'image_1' => $save_url1,
            'image_2' => $save_url2,
            'image_3' => $save_url3,
            'image_4' => $save_url4,
            'short_description' => $request->short_description,
            'color' => $request->color,
            'size' => $request->size,
            'long_description' => $request->long_description,
        ]);

        $notification = array(
            'message' => 'Product insert successfully!',
            'alert-type' => 'succcess'
        );

        return redirect()->route('all.product')->with($notification);
    }

    public function EditProduct($id)
    {
        $category = Category::orderBy('category_name', 'ASC')->get();
        $subcategory = Subcategory::orderBy('category_name', 'ASC')->get();
        $product = ProductList::findOrFail($id);
        $details = ProductDetail::where('product_id', $id)->get();
        return view('backend.product.product_edit', compact('category', 'subcategory', 'product', 'details'));
    }

    public function UpdateProduct()
    {
        echo "update code write here";
    }
}
