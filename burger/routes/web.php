<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;

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

// s.t => Code View
Route::get('/',[PagesController::class , 'index'])->name('index');
Route::get('/about' , [PagesController::class , 'about'])->name('about'); // about
Route::get('/donations' , [PagesController::class , 'donations'])->name('donations'); // donations
Route::get('/blog' , [PagesController::class , 'blog'])->name('blog'); // blog
Route::get('/contact' , [PagesController::class , 'contact'])->name('contact'); // contact
//Route::resource('about', [PagesController::class , 'about')->name('about');
// e.d => Code View


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
