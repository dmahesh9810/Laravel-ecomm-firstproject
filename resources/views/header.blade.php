<?php

use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Auth;

// use Illuminate\Contracts\Session\Session;

$total=0;
if(Auth::check()){
  $total= ProductController::cartItem();
}



?>
<script>
  $(document).ready(function(){
	$(window).scroll(function(){
		if(this.scrollY > 1){
			$('.navbar').addClass("sticky");
		}else{
			$('.navbar').removeClass("sticky");
		}

	});
});
</script>


<div class="navbar-default">
<nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar ">
  <a class="navbar-brand" href="/">Beauty<span>Store</span></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto ml-5 menu">
      <li class="nav-item active ">
        <a class="nav-link active navlinkhover" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link active navlinkhover" href="/all">All Fashion</a>
      </li>




      <li class="nav-item dropdown" style="position: static;">
        <a class="nav-link dropdown-toggle active " href="#" id="mega-one" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Catagory
        </a>
        <div class="dropdown-menu " aria-labelledby="mega-one">
          <div class="row">
            <div class="col-sm-8 col-lg-1">

            </div>
              <div class="col-sm-6 col-lg-2">
                <h5>Women's Collection</h5>
                <a href="/blouse" class="dropdown-item">Blouse</a>
                <a href="/dresses" class="dropdown-item">Dresses</a>
                <a href="/longtops" class="dropdown-item">Long Tops</a>
                <a href="/tshirts" class="dropdown-item">T-Shirts</a>
                <a href="/saree" class="dropdown-item">Saree</a>
                <a href="/kurti" class="dropdown-item">Kurti</a>
                <a href="/ladiesovercoat" class="dropdown-item">Ladies Over Coat</a>
                <a href="/jumpsuit" class="dropdown-item">Jumpsuit</a>
                <a href="/sleepwear" class="dropdown-item">Sleepwear</a>

              </div>
              <div class="col-sm-8 col-lg-2">
                <h5>Accessories</h5>
                <a href="#" class="dropdown-item">Footwear</a>
                <a href="#" class="dropdown-item">Hand Bag</a>
                <a href="#" class="dropdown-item">Hair Accessories</a>
                <a href="#" class="dropdown-item">Jewellery</a>
                <a href="#" class="dropdown-item">Shawl</a>
                <a href="#" class="dropdown-item">Wallets</a>

              </div>

              <div class="col-sm-8 col-lg-2">
                <h5>Bottom Wear</h5>
                <a href="#" class="dropdown-item">Denims</a>
                <a href="#" class="dropdown-item">Pants</a>
              </div>
              <div class="col-sm-8 col-lg-2">
                <h5>Lingerie</h5>
                <a href="#" class="dropdown-item">Bra</a>
                <a href="#" class="dropdown-item">Panties</a>
              </div>
              <div class="col-sm-8 col-lg-2">
                <h5>Image</h5>
                <img src="{{asset('img/catagory.jpg')}}" style="width: 100%;">

              </div>
          </div>

        </div>


      </li>



    </ul>

    <form class="form-inline my-2 my-lg-0" action="/search">

      <input name="query" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="width: 250px;">

      <button class="btn btn-outline-primary my-2 my-sm-0 " type="submit">Search</button>
    </form>


    <ul class="nav navbar-nav navbar-right ">
    @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link active" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link active" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle active" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>


                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="/myorders">Orders</a>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>


                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>

                                </div>
                            </li>
                            <li ><a href="/cartlist" class="nav-link active navlinkhover"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-cart4" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
</svg>{{$total}}</a></li>
                        @endguest

    </ul>

  </div>
</nav>

</div>


