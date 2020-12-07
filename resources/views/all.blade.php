@extends('master')
@section("content")
<div class="container-fluid mt-5 py-5">

<div class="row  p-3 py-5">

  <div class="col-md-3 col-lg-3 col-xl-3 col-sm-4 ">
  <div class="catagory">
    <div class="ml-3 pt-5" style="height: 1100px;">
<div>

</div>
<form action="/filter" method="POST">
  @csrf
  <h5 style="color: white;">Filter </h5>
   <label for="">Min</label><br>
   <input type="number" name="min" value="">
   <label for="">Max</label><br>
   <input type="number" name="max" value=""><br>
   <label for="">Catagory</label><br>
   <select name="catagory" id="" style="width: 177px;">
     <option value="" selected>All</option>
      <option value="Jumpsuit">Jumpsuit</option>
      <option value="Ladies Over Coat">Ladies Over Coat</option>
      <option value="Sleepwear">Sleepwear</option>
      <option value="Dresses">Dresses</option>
      <option value="Kurti">Kurti</option>
      <option value="Saree">Saree</option>
      <option value="Shawl">Shawl</option>
      <option value="Lingerie">Lingerie</option>
      <option value="Long Tops">Long Tops</option>
      <option value="Blouse">Blouse</option>
   </select>
   
  
   <input type="submit" class="btn btn-success mt-5"><br><br>
</form>
   
   

<ul id="myUL">
  <li><span class="caret">Women's Collection</span>
    <ul class="nested ml-5">
    <div class="py-2"><a href="/jumpsuit" style="text-decoration: none;">Jumpsuit</a><br></div>
        
        <div class="py-2"><a href="/ladiesovercoat" style="text-decoration: none;" class="dd">Ladies Over Coat</a><br></div>
        <div class="py-2"><a href="/sleepwear" style="text-decoration: none;">Sleepwear</a><br></div>
        <div class="py-2"><a href="/kurti" style="text-decoration: none;">Kurti</a><br></div>
        <div class="py-2"><a href="/saree" style="text-decoration: none;">Saree</a><br></div>
        <div class="py-2"><a href="/shawl" style="text-decoration: none;">Shawl</a><br></div>
        <div class="py-2"><a href="/lingerie" style="text-decoration: none;">Lingerie</a><br></div>
        <div class="py-2"><a href="/longtops" style="text-decoration: none;">Long Tops</a><br></div>
        <div class="py-2"><a href="/blouse" style="text-decoration: none;">Blouse</a><br></div>
        <div class="py-2"><a href="/denims" style="text-decoration: none;">Denims</a><br></div>
        <div class="py-2"><a href="/dresses" style="text-decoration: none;">Dresses</a><br></div>
        <div class="py-2"><a href="/tshirts" style="text-decoration: none;">T-Shirts</a><br></div>
  
    </ul>
  </li>
</ul>
<ul id="myUL">
  <li><span class="caret">Accessories</span>
    <ul class="nested ml-5">
        <div class="py-2"><a href="/jumpsuit" style="text-decoration: none;">Footwear</a><br></div>
        <div class="py-2"><a href="/ladiesovercoat" style="text-decoration: none;" class="dd">Hand Bag</a><br></div>
        <div class="py-2"><a href="/sleepwear" style="text-decoration: none;">Hair Accessories</a><br></div>
        <div class="py-2"><a href="/kurti" style="text-decoration: none;">Jewellery</a><br></div>
        <div class="py-2"><a href="/saree" style="text-decoration: none;">Shawl</a><br></div>
        <div class="py-2"><a href="/shawl" style="text-decoration: none;">Wallets</a><br></div>
       
      
    </ul>
  </li>
</ul>
<ul id="myUL">
  <li><span class="caret">Bottom Wear</span>
    <ul class="nested ml-5">
        <div class="py-2"><a href="/jumpsuit" style="text-decoration: none;">Denims</a><br></div>
        <div class="py-2"><a href="/ladiesovercoat" style="text-decoration: none;" class="dd">Pants</a><br></div>
        <div class="py-2"><a href="/sleepwear" style="text-decoration: none;">Bra</a><br></div>
        <div class="py-2"><a href="/kurti" style="text-decoration: none;">Panties</a><br></div>
       
      
    </ul>
  </li>
</ul>
<script>
var toggler = document.getElementsByClassName("caret");
var i;

for (i = 0; i < toggler.length; i++) {
  toggler[i].addEventListener("click", function() {
    this.parentElement.querySelector(".nested").classList.toggle("active");
    this.classList.toggle("caret-down");
  });
}
</script>
    </div> 
    </div>
  </div>

  <div class="col-md-9 col-lg-9 col-xl-9 col-sm-12">
 
  <div class="row">
 
  @foreach ($products->sortBy('description') as $item)
  <div class="col-md-4 col-lg-4 col-xl-3 col-sm-6 mt-5">
    
    <div class="card {{$item['id']==2?'active':''}} ">
    <a href="detail/{{$item['id']}}"> 
      <img src="upload/gallery/{{$item['gallery1']}}" alt="" class="products-img" > 
     
    </a>
    
    <a href="detail/{{$item['id']}}" class="btn btn btn-outline-success"><h5 class="ml-0">Rs. {{$item['price']}}</h5></a>  
    
     <form action="/add_to_cart" method="POST">
     @csrf
     <input type="hidden" name="product_id" value="{{$item['id']}}">
     <button class="btn btn-outline-success w-100">Add to Cart<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
</svg></button>
        </form>
    </div>
  </div>
  @endforeach
  </div>

  </div>
</div>
</div>
@endsection
