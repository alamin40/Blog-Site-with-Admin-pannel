<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\WebController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [WebController::class, 'index'])->name('home');
























Route::get('/product-detail/{id}', [WebController::class, 'detail'])->name('product-detail');


Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified'])->group(function () {

    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');


    Route::get('/add-product', [ProductController::class, 'index'])->name('product.add');
    Route::post('/new-product', [ProductController::class, 'create'])->name('product.new');
    Route::get('/manage-product', [ProductController::class, 'manage'])->name('product.manage');
//    Route::get('/detail-product-info/{id}', [ProductController::class, 'detail'])->name('product.detail');
    Route::get('/update-product-status/{id}', [ProductController::class, 'updateStatus'])->name('product.status');
    Route::get('/edit-product/{id}', [ProductController::class, 'edit'])->name('product.edit');
    Route::post('/update-product/{id}', [ProductController::class, 'update'])->name('product.update');
//    Route::get('/delete-product/{id}', [ProductController::class, 'delete'])->name('product.delete');



    Route::get('/add-user',[UserController::class, 'index'])->name('add.user');
    Route::post('/new-user',[UserController::class, 'create'])->name('new.user');
    Route::get('/manage-user',[UserController::class, 'manage'])->name('manage.user');
    Route::get('/edit-user/{id}',[UserController::class, 'edit'])->name('edit.user');
    Route::post('/update-user/{id}',[UserController::class, 'update'])->name('update.user');
    Route::get('/delete-user/{id}',[UserController::class, 'delete'])->name('delete.user');

});



