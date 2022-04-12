<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class WebController extends Controller
{
    private $product;
    private $products;
    public function index()
    {

        $this->products = Product::where('status',1)->orderBy('id','desc')->get();

        return view('website.home.home',['products'=>$this->products]);
    }

    public function product()
    {
        return view('website.product.category');
    }

    public function detail($id){
        $this->product = Product::find($id);

        return view('website.product.detail',['product'=>$this->product]);
    }
    public function contact()
    {
        return view('website.contact.contact');
    }
}
