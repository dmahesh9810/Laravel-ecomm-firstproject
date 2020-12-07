@extends('master')
@section("content")
<div class="container">

<div class="custom-product mt-5" style="margin-top: 200px;"> 
    <div class="col-sm-12 mt-5">
    <div class="trending-wrapper">
    <h2 style="margin-top: 100px;;">Result for Products</h2>
    @foreach ($products as $item)
    <div class=" row searched-item cart-list-devider">
    <div class="col-sm-4 mt-5">
    <a href="detail/{{$item->id}}">
        <img class="trending-image" src="{{asset('upload/gallery/'.$item->gallery1)}}" class="d-block " alt="..." style="width: 200px; height: 200px;">
    </a>
    </div>
    <div class="col-sm-5 mt-5">
         <div class="">
          <h3 style="color: green;">{{$item->title}}</h3>  
          <p>{{$item->description}}</p>         
        </div>
        <form action="/ordernow/{{$item->cart_id}}" method="GET">
            @csrf
            <input type="number" name="qty" value="1" style="width: 50px;"><br>
            
            <button type="submit" class="btn btn-outline-success mt-3">Order Now</button>
        </form>
           
    </div>
    <div class="col-sm-3 mt-5">
        <a  href="/removecart/{{$item->cart_id}}" class="btn btn-warning">Remove to cart</a><br>
       
    </div>
      </div>
      @endforeach
    </div>
    
    </div>
</div>

</div>

@endsection