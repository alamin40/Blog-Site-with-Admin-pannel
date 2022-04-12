<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    private $product;
    private $products;
    public function index()
    {
        return view('admin.product.add');
    }

    public function create(Request $request)
    {
        Product::newProduct($request);
        return redirect()->back()->with('message', 'Product info create successfully.');
    }

    public function manage()
    {
        $this->products = Product::orderBy('id', 'desc')->get();
        return view('admin.product.manage', ['products' => $this->products]);

    }

    public function detail($id)
    {
        $this->product = Product::find($id);
        return view('admin.product.detail',['product' => $this->product]);
    }

    public function edit($id)
    {
        $this->product =  Product::find($id);
        return view('admin.product.edit', ['product' =>$this->product ]);
    }

    public function update(Request $request, $id)
    {
        Product::updateProduct($request, $id);
        return redirect('/manage-product')->with('message', 'Updated Product Info Successfully');
//        return $request->all();
    }

    public function updateStatus($id)
    {
        $this->product = Product::find($id);
        if($this->product->status == 1)
        {
            $this->product->status = 0;
            $this->message = 'Blog status info unpublished successfully';
        }
        else
        {
            $this->product->status = 1;
            $this->message = 'Blog status info published successfully';
        }

        $this->product->save();
        return redirect('/manage-product')->with('message' , $this->message);
    }

    public function delete($id)
    {
        $this->product = Product::find($id);
        $this->product->delete();
        return redirect('/manage-product')->with('message', 'Product info delete successfully.');
    }
}
