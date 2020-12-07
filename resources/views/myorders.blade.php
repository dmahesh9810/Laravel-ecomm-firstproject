@extends('master')
@section("content")
<div class="custom-product" style="margin-bottom: 150px;margin-top: 100px;">

 
    <div class="col-sm-10 container">
    <div class="trending-wrapper">
    <h2>my orders</h2>
   
    @foreach ($orders as $item)
    <div class=" row searched-item cart-list-devider mt-5">
    <div class="col-sm-4">
    
        <img class="trending-image" src="{{asset('upload/gallery/'.$item->gallery1)}}" class="d-block w-100" alt="..." style="width: 200px; height: 200px;">
    
    </div>
    <div class="col-sm-8">
         <div class="">
          <h2 >Name : {{$item->title}}</h2> 
          
          <h5 style="color: rgb(11, 48, 148);">Quantity : {{$item->qty}}</h5>
          <h5 style="color: rgb(11, 48, 148);">Address : {{$item->address}}</h5>

          <h5 style="color: rgb(11, 48, 148);">Delivery Status : {{$item->status}}</h5>
          
          <h5 style="color: rgb(11, 48, 148);">Payment Method : {{$item->payment_method}}</h5>
          <div class="btn btn-primary"><a href="#" style="color: white;  text-decoration: none;">Contact Us</a></div>
         
        </div>
    </div>

      </div>
      @endforeach

    </div>
   
    </div>

</div>

@endsection