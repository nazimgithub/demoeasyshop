<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductReview;

class ReviewController extends Controller
{
    public function ProductReview(Request $req){
    	
    	$product_code = $req->product_code;

    	$productReview = ProductReview::where('product_code', $product_code)
				    	->orderBy('id', 'desc')
				    	->limit(4)
				    	->get();

		return 	$productReview;	    	
    }

    public function PostReview(Request $request)
    {
    	$dataInsert = ProductReview::insert([
    		'product_code' 		=> $request->input('product_code'),
    		'product_name' 		=> $request->input('product_name'),
    		'reviewer_rating'	=> $request->input('reviewer_rating'),
    		'reviewer_comments'	=> $request->input('reviewer_comments'),
    		'reviewer_name'		=> $request->input('reviewer_name'),
    		'reviewer_photo'	=> $request->input('reviewer_photo')
    	]);

    	return $dataInsert;
    }

	public function GetAllReview()
	{
		$review = ProductReview::latest()->get();
		return view('backend.review.review_all', compact('review'));
	}
}
