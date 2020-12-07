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
      
      
   
      
       
 
    </ul>
    
    
    
    
    <ul class="nav navbar-nav navbar-right "> 
    @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif
                            
                            
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>
                                

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
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
                           
                        @endguest

    </ul>

  </div>
</nav>

</div>


