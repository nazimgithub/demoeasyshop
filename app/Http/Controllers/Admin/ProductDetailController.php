<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductList;
use App\Models\ProductDetail;

class ProductDetailController extends Controller
{
    public function ProductDetails(Request $request){
    	$id = $request->id;

    	$ProductDetails = ProductDetail::where('product_id', $id)->get();
    	$ProductList = ProductList::where('id', $id)->get();

    	$item = [
    		'productdetails' => $ProductDetails,
    		'productlist'	=> $ProductList 
    	];

    	return $item;

    }
}
