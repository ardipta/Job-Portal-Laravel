<?php

namespace App\Http\Controllers;

use App\Profile;
use Illuminate\Http\Request;
use App\Company;
use App\Job;

class CompanyController extends Controller
{
    public function __construct()
    {
        $this->middleware('employer', ['except' =>array('index')]);
    }

    public function index($id, company $company){
        return view('company.index', compact('company'));
    }
    public function create(){
        return view('company.create');
    }
    public function store(Request $request){
        $this->validate($request,[
            'address'=>'required',
            'phone'=>'required|min:11|numeric',
             'website'=>'required',
             'slogan'=>'required',
             'description'=>'required',

        ]);
        $user_id = auth()->user()->id;
        Company::where('user_id', $user_id)->update([
            'address' => request('address'),
            'phone' => request('phone'),
            'website' => request('website'),
            'slogan' => request('slogan'),
            'description' => request('description'),
        ]);
        return redirect()->back()->with('message', 'Company Profile Updated Successfully');
    }
    public function coverphoto(Request $request){
        $this->validate($request,[
            'cover_photo' => 'required|mimes:jpg, jpeg, png|max:10000'
        ]);
        $user_id = auth()->user()->id;
        if($request->hasFile('cover_photo')){
            $file = $request->file('cover_photo');
            $text = $file->getClientOriginalExtension();
            $fileName = time().'.'.$text;
            $file->move('uploads/cover', $fileName);
            Company::where('user_id', $user_id)->update([
                'cover_photo'=>$fileName
            ]);
            return redirect()->back()->with('message', 'Cover Photo Uploaded Successfully');
        }
    }
    public function logo(Request $request){
        $this->validate($request,[
            'logo' => 'required|mimes:jpg, jpeg, png|max:10000'
        ]);
        $user_id = auth()->user()->id;
        if($request->hasFile('logo')){
            $file = $request->file('logo');
            $text = $file->getClientOriginalExtension();
            $fileName = time().'.'.$text;
            $file->move('uploads/avatar', $fileName);
            Company::where('user_id', $user_id)->update([
                'logo'=>$fileName
            ]);
            return redirect()->back()->with('message', 'Logo Uploaded Successfully');
        }
    }
}
