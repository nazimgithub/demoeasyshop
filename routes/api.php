<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\VisitorController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\SiteInfoController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductListController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\ProductDetailController;
use App\Http\Controllers\Admin\NotificationController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\User\ForgetController;
use App\Http\Controllers\User\ResetController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\Admin\ReviewController;
use App\Http\Controllers\Admin\ProductCartController;
use App\Http\Controllers\Admin\FavouriteController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

//====================== User Login API Start here ===================
Route::post('/login', [AuthController::class, 'Login']);
Route::post('/register', [AuthController::class, 'Register']);
Route::post('/forgetpassword', [ForgetController::class, 'ForgetPassword']);
Route::post('/resetpassword', [ResetController::class, 'ResetPassword']);
Route::get('/user', [UserController::class, 'User'])->middleware('auth:api');

//====================== User Login API End here =====================


Route::get('/getvisitor', [VisitorController::class, 'GetVisitorDetails']);
Route::post('/postcontact', [ContactController::class, 'PostContact']);
Route::get('/getsiteinfo', [SiteInfoController::class, 'AllSiteInfo']);
Route::get('/allcategory', [CategoryController::class, 'AllCategory']);
Route::get('/productlistbyremark/{remark}', [ProductListController::class, 'ProductListByRemark']);
Route::get('/productlistbycategory/{category}', [ProductListController::class, 'ProductListByCategory']);
Route::get('/productlistbysubcategory/{category}/{subcategory}', [ProductListController::class, 'ProductListBySubcategory']);
Route::get('/homeslider', [SliderController::class, 'index']);
Route::get('/productdetails/{id}', [ProductDetailController::class, 'ProductDetails']);
Route::get('/allnotification', [NotificationController::class, 'AllNotification']);
Route::get('/search/{key}', [ProductListController::class, 'ProductBySearch']);
Route::get('/similar/{key}', [ProductListController::class, 'SimilarProduct']);
Route::get('/product-review/{product_code}', [ReviewController::class, 'ProductReview']);
Route::post('/addtocart', [ProductCartController::class, 'addToCart']);
Route::get('/cartcount/{product_code}', [ProductCartController::class, 'CartCount']);
Route::get('/carlist/{email}', [ProductCartController::class, 'CartList']);
Route::get('/favourite/{product_code}/{email}', [FavouriteController::class, 'AddFavourite']);
Route::get("/favouritelist/{email}", [FavouriteController::class, "GetFavouriteList"]);
Route::get('/removefavourite/{product_code}/{email}',[FavouriteController::class, 'RemoveFavouriteItem']);
Route::get('/favouriteitemcount/{email}',[FavouriteController::class, 'FavItemCount']);
Route::get('/removecartitem/{id}', [ProductCartController::class, 'RemoveCartItem']);
Route::get('/cartitemaplus/{id}/{quantity}/{price}', [ProductCartController::class, 'CartItemPlus']);
Route::get('/cartitemaminus/{id}/{quantity}/{price}', [ProductCartController::class, 'CartItemMinus']);
Route::post('/order', [ProductCartController::class, 'Order']);
Route::get('/orderlist/{email}', [ProductCartController::class, 'OrderList']);
Route::post('/postreview', [ReviewController::class, 'PostReview']);