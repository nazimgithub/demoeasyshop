<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Favourites;
use App\Models\ProductList;

class FavouriteController extends Controller
{
	public function GetFavouriteList(Request $request){
		$result = Favourites::where('email', $request->email)->get();
		return $result;
	}

    public function AddFavourite(Request $request){
    	$productDetails = ProductList::where('product_code', $request->product_code)->get();
    	
    	$result = Favourites::insert([
    		'product_name' => $productDetails[0]['title'],
    		'product_code' => $productDetails[0]['product_code'],
    		'email' => $request->email,
    		'image' => $productDetails[0]['image'],
    	]);

    	return $result;
    }

    public function RemoveFavouriteItem(Request $request){
    	$product_code = $request->product_code;
        $email = $request->email;

        $result = Favourites::where('product_code',$product_code)->where('email',$email )->delete();
        return $result;
    }

    public function FavItemCount(Request $request)
    {
        $result = Favourites::where('email', $request->email)->count();
        return $result;
    }
}
