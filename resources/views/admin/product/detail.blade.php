@extends('master.admin.master')

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">All Product Info</h4>
                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <tr>
                            <th>Product Id</th>
                            <td>{{$product->id}}</td>
                        </tr>
                        <tr>
                            <th>Product Name</th>
                            <td>{{$product->name}}</td>
                        </tr>
                        <tr>
                            <th>Category Name</th>
                            <td>{{$product->category_name}}</td>
                        </tr>
                        <tr>
                            <th>Product Brand Name</th>
                            <td>{{$product->brand_name}}</td>
                        </tr>
                        <tr>
                            <th>Product Description</th>
                            <td>{!! $product->description !!}</td>
                        </tr>
                        <tr>
                            <th>Product Image</th>
                            <td><img src="{{asset($product->image)}}" alt="" height="150" width="200"/></td>
                        </tr>


                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->

@endsection

