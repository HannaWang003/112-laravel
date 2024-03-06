<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\ChanelController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    // return view('welcome');
    return redirect('/brands');
});
Route::get('/template', function () {
    // return view('welcome');
    return view('child');
})->name('template');

Route::resource('brands', BrandController::class);
Route::resource('chanels', ChanelController::class);

Route::get('/chaneltest', [ChanelController::class, 'test'])->name('Chanel.test');
