<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Socialite;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Session;

class UserController extends Controller
{
    //
    // function login(Request $req)
    // {
    //     $user = User::where(['mail'=>$req->mail])->first();
    //     $userId = Auth::id();

    //     if(!$user || !Hash::check($req->password,$user->password))
    //     {

    //         return "Username or password is not matched";

    //     }
    //     else{
    //         $req->session()->put('user',$user);
    //         return redirect('/');
    //     }
    // }


    // function register(Request $req)
    // {
    //     // $req->validate([
    //     //     'fname' => 'required',
    //     //     'lname' => 'required'
    //     // ]);
    //     // return $req->input();
    // if($req->password==$req->c_password)
    // {



    //         $user = new User;
    //         $user->name=$req->name;
    //         $user->mail=$req->mail;
    //         $user->password=hash::make($req->password);
    //         $user->save();
    //         return redirect('/login');
    // }

    // else
    // return redirect('register');
    // }


    public function fbsubmit(){
        return Socialite::driver('facebook')->redirect();

       }



       public function fbres()
       {

        $usr = Socialite::driver('facebook')->user();

        $user = User::where('email',$usr->email)->first();
        if($user){


            // session::put('user',$user);
            Auth()->login($user);



            return redirect('/');


        }
        else{

            $users=new User;
            $users->name=$usr->name;
            $users->email=$usr->email;
            $users->save();
            $newuser = User::where('email',$usr->email)->first();
            // session::put('user',$newuser);
            Auth()->login($newuser);
            return redirect('/');

        }

    }
    //google strt
    public function googleSubmit(){
        return Socialite::driver('google')->redirect();

       }
    public function googleRes()
       {

        $usr = Socialite::driver('google')->user();
        // print_r($usr);
        // echo "<br/>";
        // echo $usr->name;

        $user = User::where('email',$usr->email)->first();
        if($user){


            // session::put('user',$user);
            // Auth::attempt(['email' => $user]);
            Auth()->login($user);
            return redirect('/');


        }
        else{

            $users=new User;
            $users->name=$usr->name;
            $users->email=$usr->email;
            $users->save();
            $newuser = User::where('email',$usr->email)->first();
            // session::put('user',$newuser);
            Auth()->login($newuser);
            return redirect('/');

        }

    }


}
