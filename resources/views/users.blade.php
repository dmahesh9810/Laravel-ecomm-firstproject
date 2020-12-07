<h1>User Login</h1>
@if($errors->any())
@foreach ($errors->all() as $err)
<li>{{$err}}</li>
@endforeach
@endif
<form action="users" method="POST">
@csrf
    <input type="text" name="username" placeholder="enter user id"/><br><br>
    <input type="password" name="userpassword" placeholder="enter user password"/><br><br>
    <button type="submit">Login</button>
</form>