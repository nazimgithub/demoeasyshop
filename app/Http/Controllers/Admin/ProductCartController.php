<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductCard;
use App\Models\ProductList;
use App\Models\Order;

class ProductCartController extends Controller
{
    public function addToCart(Request $request)
    {
    	
    	$productDetails = ProductList::where('product_code', $request->input('product_code'))->get();

    	$price = $productDetails[0]['price'];
    	$special_price = $productDetails[0]['special_price'];

    	if($special_price == null || $special_price == ''){
    		$total_price = $price * $request->input('quantity');
    		$unit_price = $price;
    	}else{
			$total_price = $special_price * $request->input('quantity');
    		$unit_price = $special_price;
    	}

    	$result = ProductCard::insert([
    		'image'			=> $productDetails[0]['image'],
    		'email'			=> $request->input('email'),
    		'product_name'	=> $productDetails[0]['title'],
    		'product_code'	=> $request->input('product_code'),
    		'size'			=> "Size: ".$request->input('size'),
    		'color'			=> "Color: ".$request->input('color'),
    		'quantity'		=> $request->input('quantity'),
    		'unit_price'	=> $unit_price,
    		'total_price'	=> $total_price
    	]);

    	return $result;
    }

    public function CartCount(Request $request){
        $product_code = $request->product_code;
        $result = ProductCard::count();
        return $result;
    }

    public function CartList(Request $request)
    {
        $result = ProductCard::where('email', $request->email)->get();
        return $result;
    }

    public function RemoveCartItem(Request $request)
    {
        $result = ProductCard::where('id', $request->id)->delete();
        return $result;
    }

    public function CartItemPlus(Request $request)
    {
        $id = $request->id;
        $quantity = $request->quantity;
        $price = $request->price;
        $newQuantity = $quantity + 1;
        $totalPrice = $newQuantity * $price;

        $result = ProductCard::where('id', $id)
                    ->update(['quantity' => $newQuantity, 'total_price' => $totalPrice]);
        return $result;
    }

    public function CartItemMinus(Request $request)
    {
        $id = $request->id;
        $quantity = $request->quantity;
        $price = $request->price;
        $newQuantity = $quantity - 1;
        $totalPrice = $newQuantity * $price;

        $result = ProductCard::where('id', $id)->update(['quantity' => $newQuantity, 'total_price' => $totalPrice]);
        return $result;
    }

    public function Order(Request $request)
    {
        $city = $request->input('city');
        $paymentMethod = $request->input('payment_method');
        $invoiceNumber = strtoupper(md5(uniqid(rand(), true)));;
        $deliveryAddress = $request->input('delivery_address');
        $deliveryCharge = $request->input('delivery_charge');
        $email = $request->input('email');
        $customerName = $request->input('name');

        date_default_timezone_set("Asia/Kolkata");
        $orderRequestTime = date("h:i:sa");
        $orderRequestDate = date("d-m-Y");

        $carListItems = ProductCard::where('email', $email)->get();

        foreach ($carListItems as $carList) {
            $cartInsertDeleteResult = "";
            $dataInsert = Order::insert([
                'invoice_no'        => $invoiceNumber,
                'product_name'      => $carList['product_name'],
                'product_code'      => $carList['product_code'],
                'size'              => $carList['size'],
                'color'             => $carList['color'],
                'quantity'          => $carList['quantity'],
                'unit_price'        => $carList['unit_price'],
                'total_price'       => $carList['total_price'],
                'email'             => $email,
                'name'              => $customerName,
                'payment_method'    => $paymentMethod,
                'delivery_address'  => $deliveryAddress,
                'city'              => $city,
                'delivery_charge'   => $deliveryCharge,
                'order_date'        => $orderRequestDate,
                'order_time'        => $orderRequestTime,
                'order_status'      => 'Processing',
            ]);

            if($dataInsert==1){
                $deleteCartItem = ProductCard::where('id', $carList['id'])->delete();
                if($deleteCartItem==1){
                    $cartInsertDeleteResult=1;
                }else{
                    $cartInsertDeleteResult=0;
                }
            }
        }

        return $cartInsertDeleteResult;
    }

    public function OrderList(Request $request)
    {
        $orderListData = Order::where('email', $request->email)->get();
        return $orderListData;
    }

    public function GetPendingOrder()
    {
        $result = Order::where('order_status', 'Pending')->orderBy('id', 'DESC')->get();
        return view('backend.orders.order_pending', compact('result'));
    }

    public function GetProcessingOrder()
    {
        $result = Order::where('order_status', 'Processing')->orderBy('id', 'DESC')->get();
        return view('backend.orders.order_processing', compact('result'));
    }

    public function GetCompleteOrder()
    {
        $result = Order::where('order_status', 'Complete')->orderBy('id', 'DESC')->get();
        return view('backend.orders.order_complete', compact('result'));
    }

    public function GetOrderDetail($id){
        $order = Order::findorFail($id);
        return view('backend.orders.order_detail', compact('order'));
    }

    public function ChangeStatusProcessing($id){
        Order::findOrFail($id)->update(['order_status' => 'Processing']);

        $notification = array(
            'message' => 'Order processing successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('pending.order')->with($notification);
    }

    public function ChangeStatusComplete($id){
        Order::findOrFail($id)->update(['order_status' => 'Complete']);

        $notification = array(
            'message' => 'Order completed successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('processing.order')->with($notification);
    }
}
