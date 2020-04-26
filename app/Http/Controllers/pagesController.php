<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\categorie;
use App\Product;
use Cart;

class pagesController extends Controller
{
    public function home(){
    self::$data['caregories']= categorie::all()->toArray();
    self::$data['title'] .= ' Home';
       return view('home', self::$data);
    }

    public function ShowCat($cat_name){
        $cat=categorie::where('cat_name', "$cat_name")->first();
        $products=Product::where('cat_id', "{$cat['id']}")->paginate(3);
        self::$data['objproducts']=$products;
        self::$data['products']=$products->toArray();
        // print_r(self::$data['products']['date']);die;
        self::$data['title'] .= " $cat_name";
        return view('category', self::$data);
    }

    public function ShowProduct($product_id){
    $product=Product::find($product_id)->toArray();
    $cat=categorie::where('id', "{$product['cat_id']}")->first();
    self::$data['category']=$cat;
    self::$data['product']=$product;
    self::$data['title'] .= " {$product['name']}";
    return view('product', self::$data);
       

    }

    public static function ShowDashboard(){
        return view("cms.dashboard",self::$data);

    }


}
