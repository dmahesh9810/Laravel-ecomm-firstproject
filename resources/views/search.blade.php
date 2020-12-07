@extends('master')
@section("content")
<div class="container" style="margin-top: 130px;">
<h3>Search for result</h3>
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
            <a href="detail/{{$item['id']}}"><h3>{{$item['name']}}</h3></a>
            <p>{{$item['description']}}</p>
            <h3 style="color: green;" class="card-text">{{$item['category']}}</h3>
            <h1 class="card-text">Rs.{{$item['price']}}</h1>
            <a href="#" class="btn btn-primary">Add to cart</a>
        </div>
      </div>
    </div>
  </div>
</div>

    @endforeach
</div>

@endsection