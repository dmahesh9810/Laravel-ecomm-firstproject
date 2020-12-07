@extends('master')
@section("content")
<style>


</style>
<div class="wrap">
  <div class="content">
    <h1>Welcome our site</h1>
    <h1>Ladies Designer Dress</h1>
    <h1>You can <a href="#" class="btn btn-outline-primary btncaro" style="color: #fff;">Learn more > ></a></h1>
    
  </div>
  <!-- wave -->
  <svg class="wave" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
  <path fill="#fff" fill-opacity="1" d="M0,128L48,138.7C96,149,192,171,288,186.7C384,203,480,213,576,181.3C672,149,768,75,864,64C960,53,1056,107,1152,122.7C1248,139,1344,117,1392,106.7L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>
</svg>
</div>

<div class="container-fluid mt-1 py-5" style="margin-top: 1000px;">

<div class="mt-5" style="margin-bottom: 150px;">
<h2 class="title mt-5"></h2>
</div>

<div class="row ml-5 mt-5">
@foreach ($products->reverse()->slice(0,8) as $item)
  <div class="col-md-4 col-lg-3 col-xl-3 col-sm-6 mt-5">
    
    <a href="detail/{{$item['id']}}" class="mt-5"> 
      <img src="upload/gallery/{{$item['gallery1']}}" alt="" class="new-img mt-5" > 
     
    </a>
    
  </div>
 
  @endforeach

</div>


</div>
<div class="mt-5">
<h2 class="titlecatagory mt-5"></h2>
</div>
<div class="divid">

</div>
<div class=" container mt-5">
<div class="card-deck">
  
  <div class="card card-hover">
    <a href="/blouse" class="nav-link">
    <h2>BLOUSE</h2>
    <img class="card-img-top" src="img/ladies-blouse (1).png" alt="Card image cap">
    </a>
   
  </div>
  
  <div class="card card-hover">
  <a href="/dresses" class="nav-link">
    <h2>DRESS</h2>
    <img class="card-img-top" src="img/ladies-dress-01.png" alt="Card image cap">
  </a>
    
  </div>
  <div class="card card-hover">
  <a href="/longtops" class="nav-link">
    <h2>TOPS</h2>
    <img class="card-img-top" src="img/Long-Tops.png" alt="Card image cap">
   
  </a>
  </div>
</div>
<div class="card-deck mt-5">
  
  <div class="card card-hover">
    <a href="/tshirts" class="nav-link">
    <h2>T-SHIRTS</h2>
    <img class="card-img-top" src="img/Untitled-1.png" alt="Card image cap">
    </a>
   
  </div>
  
  <div class="card card-hover">
  <a href="/jumpsuit" class="nav-link">
    <h2>JUMPSUIT</h2>
    <img class="card-img-top" src="img/Womens-T-Shirt-PNG-Image-With-Transparent-Background.png" alt="Card image cap">
  </a>
    
  </div>
  <div class="card card-hover">
  <a href="/saree" class="nav-link">
    <h2>SAREE</h2>
    <img class="card-img-top" src="img/sticker-png-robe-slip-nightgown-nightwear-dress-dress-fashion-magenta-wedding-dress-silk-thumbnail.png" alt="Card image cap">
   
  </a>
  </div>
</div>

</div>
<div class="container-fluid">
<div class="mt-5">
<h2 class="titleacc mt-5"></h2>
</div>
<div class="dividacc">

</div>
<div class="row ml-1 ">
  <div class="col-md-4 col-lg-3 col-xl-2 col-sm-6 mt-5">
  <div class="card border-success mb-3" style="max-width: 18rem;">
  
  <div class="card-body text-success">
  <a href="/footwear" class="nav-link">
    
    <img class="card-img-top accessories-img" src="img/women-shoes-png-transparent-women-shoespng-images-pluspng-lady-shoes-png-1024_861.png" alt="Card image cap">
   
  
  </div>
  <div class="card-footer bg-transparent border-success"><h5>FOOTWEAR</h5></div></a>
</div>
  </div>
  <div class="col-md-4 col-lg-3 col-xl-2 col-sm-6 mt-5">
  <div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-body text-success">
  <a href="#" class="nav-link">
    
    <img class="card-img-top accessories-img " src="img/hair-clip-png-image-background-png-arts-hair-clip-png-500_452.png" alt="Card image cap">
   
  
  </div>
  <div class="card-footer bg-transparent border-success"><h5>HAIR</h5></div></a>
</div>
  </div>
  <div class="col-md-4 col-lg-3 col-xl-2 col-sm-6 mt-5">
  <div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-body text-success">
  <a href="#" class="nav-link">
    
    <img class="card-img-top accessories-img " src="img/4919421_ladies-bags-handbags-png-transparent-png.png" alt="Card image cap">
   
  
  </div>
  <div class="card-footer bg-transparent border-success"><h5>HAND BAG</h5></div></a>
</div>
  </div>
  <div class="col-md-4 col-lg-3 col-xl-2 col-sm-6 mt-5">
  <div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-body text-success">
  <a href="#" class="nav-link">
    
    <img class="card-img-top accessories-img " src="img/wallet_PNG77012.png" alt="Card image cap">
   
  
  </div>
  <div class="card-footer bg-transparent border-success"><h5>WALLET</h5></div></a>
</div>
  </div>
  <div class="col-md-4 col-lg-3 col-xl-2 col-sm-6 mt-5">
  <div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-body text-success">
  <a href="#" class="nav-link">
    
    <img class="card-img-top accessories-img " src="img/5c6168180c34ea0001ba3aea.webp" alt="Card image cap">
   
  
  </div>
  <div class="card-footer bg-transparent border-success"><h5>SHAWL</h5></div></a>
</div>
  </div>
  <div class="col-md-4 col-lg-3 col-xl-2 col-sm-6 mt-5">
  <div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-body text-success">
  <a href="#" class="nav-link">
    
    <img class="card-img-top  accessories-img " src="img/png-turquoise-emerald-ring-blue-green-ladies-turquoise-wedding-rings-gemstone-blue-ring-diamond-clipart.png" alt="Card image cap">
   
  
  </div>
  <div class="card-footer bg-transparent border-success"><h5>JEWELLERY</h5></div></a>
</div>
  </div>

</div>
</div>

<!-- <div class="container mt-5">
<div>
  <button class="btn btn-outline-primary">Register</button>
</div>
</div> -->


@endsection