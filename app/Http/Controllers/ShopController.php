<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\product;
use App\Order;
use Cart;
use Session;


class ShopController extends Controller
{
    public static function AddToCart(Request $request){
        if(is_numeric($request->product_id) && $request->product_id !=0){
        if($product=Product::find($request->product_id)->toArray()){
        Cart::add($product['id'], $product['name'], $product['price'], 1, array());
        Session::flash('sm',"{$product['name']} Added to the cart");
        echo true;
          }else{
              
         #todo
          }
        }else{
        #todo
        }
    }
    public static function DeleteProduct(Request $request){
        Cart::remove($request->product_id);
        Session::flash('sm',"the product deleted from the cart");
        echo true;
        
     
    }

    public static function UpdateCart(Request $request){
    echo $request->product_id;
    if(is_numeric($request->product_id) && $request->product_id != 0){
        if(Cart::get($request->product_id)){
    Cart::update($request->product_id, array(
        'quantity' => -1,
      ));  
      Session::flash('sm',"the cart updated");
        echo true;
    } 
    }
}

    public static function ShowCart(){
        self::$data['title']=" Cart";
        self::$data['cartContent']=Json_decode(Cart::getContent()->toJson());
        return view('cart', self::$data);
      
        
    }
    public static function SaveOrder(){
        if(Session::get('user_id')){
            if(Cart::getTotalQuantity()>0){
            if(Order::SaveOrder()){
                Session::flash('sm',"your order has been saved");
                return redirect('shop/GoToCart');

            }else {
                return redirect('shop/GoToCart')->withErrors("somthing worng");
            }
            }else{
                return redirect('/')->withErrors("the cart id empty!");
            }

        }else {
         return redirect('user/login')->withErrors("you must log in befor saving an order");
        }
    }
}
