@extends('master.admin.master')

@section('body')
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Add Category Form</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Please Fill All The Field</div>
                <div class="card-body">
                    <p class="text-center text-success">{{Session::get('message')}}</p>
                    <form action="{{route('product.new')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row mb-3">
                            <label class="col-md-3">Product Name</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="name"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-md-3">Category Name</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="category_name"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-md-3">Product Brand</label>
                            <div class="col-md-9">
                                <input class="form-control" name="brand_name">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-3 col-form-label">Product Description</label>
                            <div class="col-sm-9">
                                <textarea class="form-control summernote" name="description" id="horizontal-email-input4"></textarea>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-md-3">Image</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control-file" name="image" id=""/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-md-3"></label>
                            <div class="col-md-9">
                                <input type="submit" class="btn btn-success" value="Create New Product"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection

