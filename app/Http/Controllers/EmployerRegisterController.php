<?php

namespace App\Http\Controllers;
use App\User;
use App\Company;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;

class EmployerRegisterController extends Controller
{
    public function store(){
        $user = User::create([
            'email' => request('email'),
            'user_type' =>  request('user_type'),
            'password' => Hash::make(request('password')),
        ]);
        Company::create([
            'user_id' => $user->id,
            'cname' => request('cname'),
            'slug' => str_slug(request('cname')),
        ]);
        return redirect()->to('login')->with('message', 'Must Verify your email address');
    }
}
