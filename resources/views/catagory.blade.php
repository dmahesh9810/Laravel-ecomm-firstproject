@extends('master')
@section("content")
<div class="view">
   <!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-2" data-slide-to="1"></li>
    <li data-target="#carousel-example-2" data-slide-to="2"></li>
  </ol>
  <!--/.Indicators-->
 
  <!--/.Slides-->
  <!--Controls-->
  <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->
</div>
<!--/.Carousel Wrapper-->

</div>
<div class="container-fluid mt-5 py-5">

<div class="row ml-5 p-3 py-5">

  <div class="col-3">
  <div class="catagory">
    <div class="ml-5 pt-5">
      
        <div class="py-2"><a href="/jumpsuit">Jumpsuit</a><br></div>        
        <div class="py-2"><a href="/ladiesovercoat">Ladies Over Coat</a><br></div>
        <div class="py-2"><a href="/sleepwear">Sleepwear</a><br></div>
        <div class="py-2"><a href="/kurti">Kurti</a><br></div>
        <div class="py-2"><a href="/saree">Saree</a><br></div>
        <div class="py-2"><a href="/shawl">Shawl</a><br></div>
        <div class="py-2"><a href="/lingerie">Lingerie</a><br></div>
        <div class="py-2"><a href="/longtops">Long Tops</a><br></div>
        <div class="py-2"><a href="/blouse">Blouse</a><br></div>
        <div class="py-2"><a href="/denims">Denims</a><br></div>
        <div class="py-2"><a href="/dresses">Dresses</a><br></div>
        <div class="py-2"><a href="/tshirts">T-Shirts</a><br></div>
    </div>
        
        
    </div>
  </div>

  <div class="col-9">
 
  <div class="row">
  @foreach($products as $item)
<div class="row ">
    
  <div class="col-sm-4 mt-5">
    <div class="">
    <a href="detail/{{$item['id']}}">
    <img src="{{asset('upload/gallery/'.$item->gallery1)}}" alt="" class="" style="height: 300px;">
    </a>
      
    </div>
  </div>
  <div class="col-sm-8 mt-5">
    <div class="">
      <div class="card-body">
      <div>
            <a href="detail/{{$item['id']}}" style="text-decoration: none;"><h3>{{$item['title']}}</h3></a>
            <p>{{$item['description']}}</p>
            <a href="detail/{{$item['id']}}" style="text-decoration: none;">
            <!-- <h3 style="color: green;" class="card-text">{{$item['category']}}</h3> -->
            </a>
            <h3 class="card-text">Rs.{{$item['price']}}</h3>
            <form action="/add_to_cart" method="POST">
     @csrf
     <input type="hidden" name="product_id" value="{{$item['id']}}">
     <button class="btn btn-outline-success" style="width: 150px;">Add to Cart<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
</svg></button>
        </form>
          
        </div>
      </div>
    </div>
  </div>
</div>

    @endforeach
  </div>

  </div>
</div>
</div>

@endsection