@extends('master')
@section("content")
<div class="container" style="margin-top: 150px; margin-bottom: 150px;">
<div class="row" style="margin-top: 70px;">
<div class="row">
<div class="col-sm-2">
<div class="card-group mt-1" >
  <div class="ml-2">
  <li data-target="#carousel-thumb" data-slide-to="0" style="list-style: none; cursor:pointer;">
    <img class="detail-img" src="{{asset('upload/gallery/'.$product->gallery1)}}" alt="">
    </li>

  </div>
  <div class="ml-2 ">
  <li data-target="#carousel-thumb" data-slide-to="1" style="list-style: none; cursor:pointer;">
    <img class="detail-img" src="{{asset('upload/gallery/'.$product->gallery2)}}" alt=""  >
    </li>

  </div>
  <div class="ml-2">
  <li data-target="#carousel-thumb" data-slide-to="2" style="list-style: none; cursor:pointer;">
    <img class="detail-img" src="{{asset('upload/gallery/'.$product->gallery3)}}" alt="" >
    </li>


  </div>
</div>
</div>
<div class="col-sm-5 mt-5">

        <!--Carousel Wrapper-->
<div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">
  <!--Slides-->
  <div class="carousel-inner  detail-img-main" role="listbox">
    <div class="carousel-item active">
      <img class="d-block " src="{{asset('upload/gallery/'.$product->gallery1)}}"
        alt="First slide" style="height: auto; width: 77%">
    </div>
    <div class="carousel-item">
      <img class="d-block " src="{{asset('upload/gallery/'.$product->gallery2)}}"
        alt="Second slide" style="height: auto; width: 77%">
    </div>
    <div class="carousel-item">
      <img class="d-block" src="{{asset('upload/gallery/'.$product->gallery3)}}"
        alt="Third slide" style="height: auto; width: 77%">
    </div>
  </div>
  <!--/.Slides-->
  <!--Controls-->

  <!--/.Controls-->

  <ol class="">

</div>

    </div>
    <div class="col-sm-5 mt-5">

        <h3 style="color: green;">{{$product['title']}}</h3>
        <h5> {{$product['category']}}</h5>
        <p>{{$product['description']}}</p>
        <h4>Rs : {{$product['price']}}.00</h4>

        <br>

        <br>
        <form action="/buynow/{{$product['id']}}" method="GET">
        @csrf
        <label for="">Qty : </label>
        <input type="number" name="qty" value="1" style="width: 50px;">
        <input type="hidden" name="product_id" value="{{$product['id']}}">
        <div class="row mt-2">
        <button class="btn btn-success ml-3">Buy Now</button>

</form>
<form action="/add_to_cart" method="POST">
            @csrf
            <input type="hidden" name="product_id" value="{{$product['id']}}">
            <div class="row">
            <button class="btn btn-primary ml-4">Add to Cart</button>
            </div>



        </form>
        </div>



        <br><br>
    </div>


  </div>



</div>
<div class="container">
<div class="mt-5">
  <h3>New Product</h3>


  <div class="row ml-5 mt-5">
@foreach ($new1->reverse()->slice(0,8) as $item)
  <div class="col-md-4 col-lg-3 col-xl-3 col-sm-6 mt-5">

    <a href="{{$item['id']}}" class="mt-5">
      <img src="{{asset('upload/gallery/'.$item->gallery1)}}" alt="" class="new-img mt-5" >


    </a>

  </div>

  @endforeach

</div>

</div>
</div>
</div>

@endsection
