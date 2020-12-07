<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\AdminLoginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UsersController;
use Illuminate\Support\Facades\Auth;

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

// Route::get('/login', function () {
//     return view('login');
// });
Route::get('/adminmaster', function () {
    return view('adminmaster');
});
// Route::get('/logout', function () {
//     // Session::forget('user');
//     return redirect('login');
// });

Route::view('/register','register');
Route::view('/buy','buy');
Route::get('/all',[ProductController::class,'all']);
Route::post("/login",[UserController::class,'login']);
Route::post("/register",[UserController::class,'register']);
Route::get("/",[ProductController::class,'index']);
Route::get("/detail/{id}",[ProductController::class,'detail']);
Route::get("search",[ProductController::class,'search']);
Route::post("add_to_cart",[ProductController::class,'addToCart']);
Route::get("/buynow/{id}",[ProductController::class,'buyNow']);
Route::get("cartlist",[ProductController::class,'cartList']);
Route::get("removecart/{id}",[ProductController::class,'removeCart']);
Route::get("ordernow/{id}",[ProductController::class,'orderNow']);

Route::post("buyplace/{id}",[ProductController::class,'buyPlace']);
Route::post("orderplace/{id}",[ProductController::class,'orderPlace']);

// Route::match(array('GET','POST'),"orderplace/{id}",[ProductController::class,'orderPlace']);
Route::get("myorders",[ProductController::class,'myOrders']);

//admin
Route::view('/adminheader','admin/pages/adminheader');
// Route::view('/adminmaster','adminmaster');
// Route::view('/admin1','admin/admin1');
Route::prefix('admin1')->group(function(){
    Route::get('/login',[AdminLoginController::class,'showLoginForm'])->name('admin.login');
    Route::post('/login',[AdminLoginController::class,'login'])->name('admin.login.submit');
    Route::get('/',[AdminController::class,'admin1'])->name('admin.dashboard'); 
     
    
});

    // Route::view('/admin2','admin/admin2');
    // Route::view('/admin3','admin/admin3');
Route::get('/admin2',[AdminController::class,'admin2']);
Route::get('/admin3',[AdminController::class,'admin3']);





Route::get('/allitems',[AdminController::class,'allitems']);
Route::get('/removeItem/{id}',[AdminController::class,'removeItem']);
Route::get('/edit/{id}',[AdminController::class,'editItem']);
Route::post('/update',[AdminController::class,'update']);
Route::post('/itemfilter',[AdminController::class,'itemfilter']);

Route::get('/allorders',[AdminController::class,'allorders']);
Route::post('/filterOrders',[AdminController::class,'filterOrders']);
Route::get('/removeOrder/{id}',[AdminController::class,'removeOrder']);



Route::view('/carosal','carosal');

Route::view('/widgets','admin/pages/widgets');
Route::get('/post_items',[AdminController::class,'post']);
// Route::view('/post_items','admin/pages/post_items');
Route::post("/post_items",[AdminController::class,'postItems']);



Route::post("create",[ProductController::class,'getData']);

Route::view("create","erro");


// Route::post("users",[UsersController::class,'getData']);
// Route::view("login","users");

//catagory
Route::get("/jumpsuit",[ProductController::class,"jumpSuit"]);
Route::get("/ladiesovercoat",[ProductController::class,"ladiesOverCoat"]);
Route::get("/sleepwear",[ProductController::class,"Sleepwear"]);
Route::get("/kurti",[ProductController::class,"Kurti"]);
Route::get("/saree",[ProductController::class,"Saree"]);
Route::get("/shawl",[ProductController::class,"Shawl"]);
Route::get("/lingerie",[ProductController::class,"Lingerie"]);
Route::get("/longtops",[ProductController::class,"Longtops"]);
Route::get("/blouse",[ProductController::class,"Blouse"]);
Route::get("/denims",[ProductController::class,"Denims"]);
Route::get("/dresses",[ProductController::class,"Dresses"]);
Route::get("/tshirts",[ProductController::class,"tShirts"]);
Route::view("/catagory","catagory");

Route::get("/fb",[UserController::class,'fbbutton']);
Route::get("/fbsub",[UserController::class,'fbsubmit']);
Route::get("/fbres",[UserController::class,'fbres']);


Route::get("/google",[UserController::class,'googleButton']);
Route::get("/googlesub",[UserController::class,'googleSubmit']);
Route::get("/googleres",[UserController::class,'googleRes']);



// Route::post("/all",[UserController::class,'go']);

Route::get("/test",[ProductController::class,"max"]);
Route::post("/filter",[ProductController::class,"filter"]);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
