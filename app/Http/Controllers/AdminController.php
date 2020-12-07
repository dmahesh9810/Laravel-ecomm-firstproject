<?php

namespace App\Http\Controllers;

use App\Models\order;
use App\Models\Product;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth:admin');
        
    }
    public function admin2()
    {
 
    
       
            return  view('admin/admin2');
       
       
    }
    public function admin3()
    {
 
    
       
            return  view('admin/admin3');
       
       
    }
    public function post()
    {
 
    
       
            return  view('admin/pages/post_items');
       
       
    }
    

    function admin1(){
        
        
        
            $pro = DB::table("Products")->get()->count('id');
            $orders = DB::table("Orders")->get()->count('id');
            $users = DB::table("users")->get()->count('id');
            
            return view('admin.admin1',['item'=>$pro,'orders'=>$orders,'users'=>$users]);
        
        
                
        
       
    }
    function allitems(){
        $pro = DB::table("Products")->get()->count('id');
        $all = Product::all();
        return view('admin.pages.allitems',['item'=>$pro,'all'=>$all]);
    }
    function removeItem($id)
    {
        Product::destroy($id);
        return redirect('allitems');
    }
    function editItem($id){
        $data = Product::find($id);
        return view('admin.pages.edit',['data'=>$data]);
    }
    function update(Request $req)
    {
        
        $data=Product::find($req->id);

        if ($req->file('gallery1')) {
            $save1 = $req->file('gallery1');
            $filename1 = time() . '.' . $save1->getClientOriginalName();
            $req->gallery1->move('upload/gallery/', $filename1);
            $data->gallery1 = $filename1;

            
        }
        if($req->file('gallery2')){
            $save2 = $req->file('gallery2');
            $filename2 = time() . '.' . $save2->getClientOriginalName();
            $req->gallery2->move('upload/gallery/', $filename2);
            $data->gallery2 = $filename2;
        }
        if($req->file('gallery3')){
            $save3 = $req->file('gallery3');
            $filename3 = time() . '.' . $save3->getClientOriginalName();
            $req->gallery3->move('upload/gallery/', $filename3);
            $data->gallery3 = $filename3;
        }

        $data->title=$req->title;
        $data->category=$req->category;
        $data->price=$req->price;
        $data->description=$req->description;
        $data->save();
        return redirect('allitems');
    }
    function itemfilter(Request $req){
        $pro = DB::table("Products")->get()->count('id');
       
        $data= Product::where($req->input('filterItem'), 'like', '%'.$req->input('searchitems').'%')->get();
        return view('admin.pages.itemfilter',['products'=>$data,'item'=>$pro]);
    }

    function allorders(){
        $pro = DB::table("orders")->get()->count('id');
        $qty = DB::table("orders")->get()->sum('qty');
        $all = Order::all();
        
        return view('admin.pages.allorders',['item'=>$pro,'all'=>$all,'qty'=>$qty]);
    }
    function filterOrders(Request $req){
        $pro = DB::table("orders")->get()->count('id');
        $qty = DB::table("orders")->get()->sum('qty');
       
        $data= Order::where($req->input('filterOrders'), 'like', '%'.$req->input('searchitems').'%')->get();
        return view('admin.pages.orderfilter',['products'=>$data,'item'=>$pro,'qty'=>$qty]);
    }
    function removeOrder($id)
    {
        Order::destroy($id);
        return redirect('allorders');
    }

    function postItems(Request $req){



        $product = new Product;

        if ($req->file('gallery1')) {
            $save1 = $req->file('gallery1');
            $filename1 = time() . '.' . $save1->getClientOriginalName();
            $req->gallery1->move('upload/gallery/', $filename1);
            $product->gallery1 = $filename1;

            
        }
        if($req->file('gallery2')){
            $save2 = $req->file('gallery2');
            $filename2 = time() . '.' . $save2->getClientOriginalName();
         
            $req->gallery2->move('upload/gallery/', $filename2);
            $product->gallery2 = $filename2;
        }
        if($req->file('gallery3')){
            $save3 = $req->file('gallery3');
            $filename3 = time() . '.' . $save3->getClientOriginalName();
            
            $req->gallery3->move('upload/gallery/', $filename3);
            $product->gallery3 = $filename3;
        }


        $product->title=$req->title;
        $product->price=$req->price;
        $product->category=$req->category;
        $product->description=$req->description;
        $product->save();
        return redirect('post_items');


    }
}
