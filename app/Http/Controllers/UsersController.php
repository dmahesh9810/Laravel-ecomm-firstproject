<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UsersController extends Controller
{
    //
    function getData(Request $req)
    {
        $req->validate([
                'username'=>'required'
        ]);
        return $req->input();

        $req->errors()->add('username', 'Something is wrong with this field!');
        // $this->validate($req,[
        //     'username'=>'required',
        //     'userpassword'=>'required'
    
    return $req->input();

    }
}
