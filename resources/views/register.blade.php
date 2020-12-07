@extends('master')
@section("content")


<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<div class="container">

<br>  
<hr>




<div class="card bg-light mt-5">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create Account</h4>
	<p class="text-center">Get started with your free account</p>
	<p>
		<a href="googlesub" class="btn btn-block btn-twitter btn-outline-primary"> <i class="fab fa-google"></i>   Login via Google</a>
		<a href="fbsub" class="btn btn-block btn-facebook btn-outline-primary"> <i class="fab fa-facebook-f"></i>   Login via facebook</a>
	</p>
	@if($errors->any())
		@foreach ($errors->all() as $err)
		<li>{{$err}}</li>
		@endforeach
		@endif
	
	<p class="divider-text">
        <span class="bg-light">OR</span>
    </p>
	<form action="register" method="POST">
		@csrf
		
		
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
		<input name="name" class="form-control" placeholder="Enter your name" type="text">
		
        
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="mail" class="form-control" placeholder="Email address" type="email">
    </div> <!-- form-group// -->

    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Create password" type="password" name="password">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Repeat password" type="password" name="c_password">
    </div> <!-- form-group// -->                                      
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Create Account  </button>
    </div> <!-- form-group// -->      
    <p class="text-center">Have an account? <a href="/login">Log In</a> </p>                                                                 
</form>
</article>
</div> <!-- card.// -->

</div> 

@endsection