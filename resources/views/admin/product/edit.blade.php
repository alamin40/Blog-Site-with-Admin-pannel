@extends('master.admin.master')

@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Add Product Form</h4>
                    <p class="text-center text-success">{{Session::get('message')}}</p>
                    <form action="{{route('product.update',  ['id' => $product->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input1" class="col-sm-3 col-form-label">Product Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" value="{{$product->name}}" name="name" id="horizontal-firstname-input1"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input2" class="col-sm-3 col-form-label">Category Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" value="{{$product->category_name}}" name="category_name" id="horizontal-firstname-input2"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input2" class="col-sm-3 col-form-label">Product Brand Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" value="{{$product->brand_name}}" name="brand_name" id="horizontal-firstname-input2"/>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input4" class="col-sm-3 col-form-label">Product Description</label>
                            <div class="col-sm-9">
                                <textarea class="form-control summernote" value="{{$product->description}}" name="description" id="horizontal-email-input4"></textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">Image</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control-file" name="image" id="horizontal-password-input"/>
                                <img src="{{asset($product->image)}}" alt="" height="100" width="150" />
                            </div>
                        </div>

                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Update Blog Info</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
