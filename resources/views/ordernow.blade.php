@extends('master')
@section("content")
<div class="custom-product mt-5" >

 
    <div class="col-sm-10" style="margin-top: 150px;">
    <div class="container">
      
        <table class="table">

<tbody>
  <tr>
    <td style="color: green;">Amount</td>
    <td>${{$total}}</td>
  </tr>
  <tr>
    <td style="color: green;">Qty</td>
    <td>{{$qty}}</td>
  </tr>
  <tr>
    <td style="color: green;">Delivery charge</td>
    <td>$ 249</td>
  </tr>
  <tr>
    <td style="color: green;">Total</td>
    <td>$ {{($total * $qty)+(249)}}</td>
  </tr>
</tbody>
</table>
<div>
<form action="/orderplace/{{$id}}" method="POST">
@csrf
<div class="row container ml-1">
<label for="">City</label>
  <div class="form-group" >
   <select name="city" id="" class="ml-5">
     <option value="">Select City</option>
     <option value="Monaragala">Monaragala</option>
     <option value="Badulla">Badulla</option>
     <option value="Anuradhapura">Anuradhapura</option>
     <option value="Ampara">Ampara</option>
     <option value="Batticaloa">Batticaloa</option>
     <option value="Galle">Galle</option>
     <option value="Gampaha">Gampaha</option>
     <option value="Hambantota">Hambantota</option>
     <option value="Jaffna">Jaffna</option>
     <option value="Kalutara">Kalutara</option>
     <option value="Kandy">Kandy</option>
     <option value="Kegalle">Kegalle</option>
     <option value="Kilinochchi">Kilinochchi</option>
     <option value="Kurunegala">Kurunegala</option>
     <option value="Mannar">Mannar</option>
     <option value="Matale">Matale</option>
     <option value="Mullaitivu">Mullaitivu</option>
     <option value="Nuwara Eliya">Nuwara Eliya</option>
     <option value="Polonnaruwa">Polonnaruwa</option>
     <option value="Puttalam">Puttalam</option>
     <option value="Ratnapura">Ratnapura</option>
     <option value="Trincomalee">Trincomalee</option>
     <option value="Vavuniya">Vavuniya</option>
   </select><br>
   
  </div>
  <div class="row container">

<span style="color: red;">@error('city'){{$message}}@enderror</span>
</div>
</div>
<div class="row container ml-1">
<label for="">Address</label>
    <textarea name="address" class="form-control ml-3" placeholder="enter your address" style="width: 300px;"></textarea>
  
  </div>
  <div class="row container ml-1">

    <span style="color: red;">@error('address'){{$message}}@enderror</span>
  </div>

<div class="row container ml-1">
<div class="form-group mt-5">
    <label for="pwd" ><h4>Payment Method:</h4> </label><br><br>
    
    <input type="radio" value="deliver" class="" name="payment"><span>Online Payment</span><br><br>
    <input type="radio" value="deliver" class="" name="payment"><span>Payment on Deliver</span><br>
   

    <span style="color: red;">@error('payment'){{$message}}@enderror</span>
    <br>
  
    <button type="submit" class="btn btn-success">Order Now</button>
    <input type="hidden" value="{{$qty}}" name="qty">
    
  </div>
  
  
  
</div>


</form>
</div>
    </div>
 

       </div>

</div>


@endsection