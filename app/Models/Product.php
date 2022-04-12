<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    use HasFactory;
    private static $product;
    private static $image;
    private static $imageName;
    private static $imageUrl;
    private static $directory;



    public static function getImageUrl($request)
    {
        self::$image = $request->file('image');
        self::$imageName = self::$image->getClientOriginalName();
        self::$directory = 'product-images/';
        self::$image->move(self::$directory, self::$imageName);
        return self::$directory.self::$imageName;
    }

    public static function newProduct($request)
    {
        self::$product         = new Product();
        self::$imageUrl = self::getImageUrl($request);

        self::saveProductBasicInfo(self::$product, $request, self::$imageUrl);

    }

    public static function saveProductBasicInfo($product, $request,$imageUrl)
    {
//        $authorId = Auth::user()->id;

        $product->name   = $request->name;
        $product->category_name   = $request->category_name;
//        $product->author_id   = $authorId;
        $product->brand_name = $request->brand_name;
        $product->description = $request->description;
        $product->image  = $imageUrl;
        $product->save();
    }

    public static function updateProduct($request, $id){
        self::$product           = Product::find($id);




//        if (self::$image = $request->file('image')){
        if ($request->file('image')){
            if (file_exists(self::$product->image)){
                unlink(self::$product->image);
            }
            self::$imageUrl = self::getImageUrl($request);
        }
        else{
            self::$imageUrl = self::$product->image;
        }

        self::saveProductBasicInfo(self::$product, $request, self::$imageUrl);


    }
}
