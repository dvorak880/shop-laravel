<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SignInRequest;
use App\Http\Requests\SignUpRequest;
use App\User;
use Illuminate\Support\Facades\Hash;
use Session;
use Socialite;

class UserController extends Controller
{
    public static function ShowLoginForm(){
        self::$data['title'] .= "Login";
        return view('forms.login',self::$data);
    }

    public static function ShowSignUpForm(){
        self::$data['title'] .= "Sign up";
        return view('forms.signup',self::$data);
        
    }

    public static function validateUser(SignInRequest $request){
        if($user =User::where('email',$request->email)->first()){
            $user=$user->toArray();
          if(Hash::check($request->password,$user['password'])){
             Session::put("user_id",$user['id']);
             Session::put("user_name",$user['name']);
             Session::flash("sm","welcome back {$user['name']}");
             if($user['role']==7){
                Session::put("is_admin",true);
             }return redirect("/");
          }return redirect('user/login')->withErrors("invalid email or password");
        }else{return redirect('user/login')->withErrors("invalid email or password");}
    }
    
    public static function SignUpUser(SignUpRequest $request){
       if(User::SaveUser($request)){
        Session::flash("sm","you sign up successfully, please sign in");
        return redirect('user/login');
        
       }
    }

    public static function LogOut(){
        Session::flush();
        return redirect("/");
    }
}
