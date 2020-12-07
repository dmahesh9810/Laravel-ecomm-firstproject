@extends('master')
@section("content")
<form action="login" method="POST">
    @csrf  
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<div class="container-fluid">
    <div class="row no-gutter">
        <!-- The image half -->
        <div class="col-md-6 d-none d-md-flex bg-image"></div>


        <!-- The content half -->
        <div class="col-md-6 bg-light">
            <div class="login d-flex align-items-center py-5">

                <!-- Demo content-->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 col-xl-7 mx-auto">
                            <h3 class="display-4">Login</h3>
                            <div class="row mt-3">
                                <div class="col-6">
                                <a href="googlesub" class="btn btn-block btn-twitter btn-outline-primary"> <i class="fab fa-google"></i>oogle</a>
		
                                </div>
                                <div class="col-6">
                                <a href="fbsub" class="btn btn-block btn-facebook btn-outline-primary"> <i class="fab fa-facebook-f"></i>acebook</a>
	
                                </div>

                            </div>
                         
                            <form>
                                <div class="form-group mb-3 mt-3">
                                    <input name="mail" id="inputEmail" type="email" placeholder="Email address" required="" autofocus="" class="form-control rounded-pill border-0 shadow-sm px-4">
                                </div>
                                <div class="form-group mb-3">
                                    <input name="password" id="inputPassword" type="password" placeholder="Password" required="" class="form-control rounded-pill border-0 shadow-sm px-4 text-primary">
                                </div>
                                <div class="custom-control custom-checkbox mb-3">
                                    <input id="customCheck1" type="checkbox" checked class="custom-control-input ">
                                    <label for="customCheck1" class="custom-control-label"> Remember password</label>
                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-block text-uppercase mb-2 rounded-pill shadow-sm">Sign in</button>
                                <div class="text-center d-flex justify-content-between mt-4"><p><a href="#" class="font-italic text-muted"> 
                                        <u>Froget password</u></a></p></div>
                            </form>
                        </div>
                    </div>
                </div><!-- End -->

            </div>
        </div><!-- End -->

    </div>
</div>
</form>





@endsection


