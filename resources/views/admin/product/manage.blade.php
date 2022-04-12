@extends('master.admin.master')
@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">All Product Info</h4>
                    <p class="text-center text-success">{{Session::get('message')}}</p>
                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>Product Name</th>
                            <th>Category Name</th>
                            <th>Brand Name</th>
{{--                            <th>Description</th>--}}
                            <th>Image</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($products as $product)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$product->name}}</td>
                                <td>{{$product->category_name}}</td>
                                <td>{{$product->brand_name}}</td>
{{--                                <td>{{$product->description}}</td>--}}
{{--                                <td>{!! $product->description !!}</td>--}}
                                <td><img src="{{asset($product->image)}}" alt="" height="50" width="80"/></td>
                                <td>{{$product->status == 1 ? 'Published' : 'Unpublished'}}</td>
                                <td>
{{--                                    <a href="{{route('product.detail', ['id' => $product->id])}}" class="btn btn-info btn-sm" title="View Blog Detail">--}}
{{--                                        <i class="fa fa-book Open"></i>--}}
{{--                                    </a>--}}

                                    <a href="{{route('product.status', ['id' => $product->id , ])}}" class="btn btn-primary btn-sm" title="Published Blog">
                                        <i class="fa fa-arrow-up"></i>
                                    </a>
                                    <a href="{{route('product.edit', ['id' => $product->id , ])}}" class="btn btn-success btn-sm" title="Edit Blog">
                                        <i class="fa fa-edit"></i>
                                    </a>

{{--                                    <a href="{{route('product.delete', ['id' => $product->id])}}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete this..')">--}}
{{--                                        <i class="fa fa-trash"></i>--}}
{{--                                    </a>--}}
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->

@endsection
