<?php

namespace App\Http\Controllers;
use App\Models\Product;
use App\Models\Cart;
use App\Models\Order;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Contracts\Session\Session as SessionSession;
use Session;
use Illuminate\Support\Facades\DB;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\Echo_;

use function PHPUnit\Framework\isNull;

class ProductController extends Controller
{
    //
    function index(){
        $data = Product::all();
        return view('product',['products'=>$data]);
    }
    function all(){
        $data = Product::all();
        return view('all',['products'=>$data]);
    }
    function detail($id)
    {
        $data = Product::find($id);
        $pro = Product::all();
        $cart = Cart::all();

        
        return view('detail',['product'=>$data,'new1'=>$pro]);
        
        

    }


    function search(Request $req)
    {
     
        $data= Product::where('title', 'like', '%'.$req->input('query').'%')->get();
        return view('search',['products'=>$data]);
    }

    function filter(Request $req)
    {
     $min = $req->min;
     $max = $req->max;
     $catagory = $req->catagory;

    

     if($min && $max && $catagory){
        $data= Product::whereBetween('price',  [$min,  $max])
        ->where('category', 'like', '%'. $catagory .'%')
        ->get();
        return view('all',['products'=>$data]);
    }
     
     if($min && $catagory){
        $data = Product::where('price', '<=', $min)
        ->where('category', 'like', '%'. $catagory .'%')
        ->get();
        return view('all',['products'=>$data]);
    }
    if($max && $catagory){
        $data = Product::where('price', '>=', $max)
        ->where('category', 'like', '%'. $catagory .'%')
        ->get();
        return view('all',['products'=>$data]);
    }

    
    if($min && $max){
        $data= Product::whereBetween('price',  [$min,  $max])
        ->get();
        return view('all',['products'=>$data]);
    }
        if($min){
           $data = Product::where('price', '<=', $min)->get();
           return view('all',['products'=>$data]);
        
        }
        if($max){
            $data = Product::where('price', '>=', $max)->get();
            return view('all',['products'=>$data]);
         
         }
         if ($catagory) {
             $data = Product::where('category', 'like', '%'.$catagory.'%')
                ->get();
             return view('all', ['products'=>$data]);
         }
                $data=Product::all();
                return view('all',['products'=>$data]);
      
      
     }
     
     
     
        // $data= Product::orwhereBetween('price',  [$min,  $max])
        // ->where('category', 'like', '%'. $catagory .'%')
        // ->get();
        // // echo $data;
        // return view('all',['products'=>$data]);
    // }
    //catogory
    function jumpSuit(){
        
        $data= Product::where('category', 'like', '%'.'jumpsuit'.'%')->get();
        return view("all",['products'=>$data]);
    }

    function ladiesOverCoat(){
        $data= Product::where('category', 'like', '%'.'ladies over coat'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Sleepwear(){
        $data= Product::where('category', 'like', '%'.'sleepwear'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Kurti(){
        $data= Product::where('category', 'like', '%'.'kurti'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Saree(){
        $data= Product::where('category', 'like', '%'.'saree'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Shawl(){
        $data= Product::where('category', 'like', '%'.'shawl'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Lingerie(){
        $data= Product::where('category', 'like', '%'.'lingerie'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Longtops(){
        $data= Product::where('category', 'like', '%'.'long top'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Blouse(){
        $data= Product::where('category', 'like', '%'.'blouse'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Denims(){
        $data= Product::where('category', 'like', '%'.'denims'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function Dresses(){
        $data= Product::where('category', 'like', '%'.'dresses'.'%')->get();
        return view("all",['products'=>$data]);
    }
    function tShirts(){
        $data= Product::where('category', 'like', '%'.'t-shirts'.'%')->get();
        return view("all",['products'=>$data]);
    }

    //catogory
    


    function addToCart(Request $req)
    {
        if(Auth::check())
        {
            $userId = Auth::id();
            $cart = new Cart;
            $cart->user_id=$userId;
            $cart->product_id=$req->product_id;
            $cart->save();
            return redirect()->back();
        }
        else{
            return redirect('/login');
        }
        
    }

    function buyNow(Request $req,$id)
    {
        
        if(Auth::check())
        {
            
            // $userId=Session::get('user')['id'];
            $userId = Auth::id();

            $total = DB::table('products')    
            ->where('products.id',$id)
            ->select('products.*')
            ->sum('products.price');
    
            return view('buy',['total'=>$total ,'id'=> $id,'qty'=> $req->qty]);
    
    
        }
        else{
            return redirect('/login');
        }
    }



    static function cartItem()
    {
        // $userId=Session::get('user')['id'];
        $userId = Auth::id();
        return Cart::where('user_id',$userId)->count();
    }
    function cartList()
    {
        //  $userId=Session::get('user')['id'];
        $userId = Auth::id();
         
            $products = DB::table('cart')
            ->join('products','cart.product_id','=','products.id')
            ->where('cart.user_id',$userId)
            ->select('products.*','cart.id as cart_id')
            ->get();
   
            return view('cartlist',['products'=>$products]);
            return view('ordernow',['products'=>$products]);
         
         
         
    }
    
    function removeCart($id)
    {
        Cart::destroy($id);
        return redirect('cartlist');
    }

    function orderNow(Request $req ,$id)
    {
       

        $total = DB::table('cart')
        ->join('products','cart.product_id','=','products.id')
      
        ->where('cart.id',$id)
        ->select('products.*','cart.id as cart_id')
        ->sum('products.price');

        return view('ordernow',['total'=>$total ,'id'=> $id ,'qty'=>$req->qty]);


      
        

    }

    function buyPlace(Request $req ,$id)
    {
        
        // $userId=Session::get('user')['id'];
        $req->validate([
            'address'=>'required',
            'payment'=>'required'
        ]);
        $userId = Auth::id();
        
        $allproduct=Product::where('id',$id)
        ->get();
        foreach($allproduct as $products)
        {
            $order = new Order();
            $order->product_id=$products['id'];
            $order->user_id=$userId;
            $order->qty=$req->qty;
            $order->status="pending";
            $order->payment_method=$req->payment;            
            $order->city=$req->city;
            $order->address=$req->address;
            $order->save();
            return redirect("/");
        }

    }

    



    function orderPlace(Request $req ,$id)
    {  
        $req->validate([
            'address'=>'required',
            'city'=>'required',
            'payment'=>'required'
        ]);
        // $userId=Session::get('user')['id'];
        $allCart = Cart::where('id',$id)
        ->get();
        foreach($allCart as $cart)
        {
     

            $order = new Order();
            $order->product_id=$cart['product_id'];
            $order->user_id=$cart['user_id'];
            $order->qty=$req->qty;
            $order->status="pending";
            $order->payment_method=$req->payment;
            
            $order->city=$req->city;
            $order->address=$req->address;
            $order->save();
            Cart::where('id',$id)->delete();

        }
        $req->input();
        return redirect('/');
        
    }

    
    
    function myOrders()
    {
        
        // $userId=Session::get('user')['id'];
        $userId = Auth::id();
        $orders = DB::table('orders')
        ->join('products','orders.product_id','=','products.id')
        ->where('orders.user_id',$userId)
        ->get();

        return view('myorders',['orders'=>$orders]);
    }

    // function getData(Request $req)
    // {
    //     $this->validate($req,[
    //         'username'=>'required',
    //         'userpassword'=>'required'
    //     ]);

    //     return $req->input();
    //     return view('login',['validate'=>$validateData]);

    // }

 

    function max(){
   
               
        $cart = Cart::all();
        $usersUnique = $cart->unique('product_id');
        $usersDupes = $cart->diff($usersUnique);
        $ss = collect($usersDupes);

        $uniqueCollection = $ss->unique('product_id');

        $uniqueCollection->all();
       
        // dd($uniqueCollection);

        $product = Product::all();
        return view('product',['products'=>$product,'related'=>$uniqueCollection]);

        

      
    }
}
