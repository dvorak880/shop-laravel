<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Categorie;

class Product extends Model
{

public static function saveNewProduct($request){
$valid=false;
$product=new self();
$product->cat_id=str_replace(" ","_", $request->cat_name);
$product->name=$request->name;
$product->description=$request->description;
$product->image=Categorie::UploadfFile($request);
$product->price=$request->price;
$product->save();
if($product->id){
    $valid=true;
    return redirect("cms/product");
}
return $valid;
    }

    public static function UpdateProduct($request,$id){
        $valid=false;
        $product=self::find($id);
        //select * from Category where cat_name=$category['cat_name']
    //   $checkCatName=DB::select('select * from categories where cat_name = ?' .'and id != ?',[$request->cat_name,$id]);
    //   //dd($checkCatName);
    //   if(count($checkCatName)==0 ){
        $product->cat_id=str_replace(" ","_", $request->cat_name);
        $product->name=$request->name;
        $product->description=$request->description;
        $product->image=Categorie::UploadfFile($request);
        $product->price=$request->price;
        $product->save();
        if($product->id){
            $valid=true;
        }
        return $valid;
            }
      //}return redirect("cms/categories")->withErrors("there is category like this");
      
       }
    

