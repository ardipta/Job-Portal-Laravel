<?php

namespace App\Http\Controllers;

use App\Company;
use App\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\JobPostRequest;

class JobController extends Controller
{
    public function __construct()
    {
        $this->middleware('employer', ['except' =>array('index','show', 'alljobs')]);
    }
    public function index(){
        $jobs = Job::all()->take('10');
        $companies = Company::all()->take('12');
        return view('welcome', compact('jobs', 'companies'));

    }
    public function show($id, Job $job){
        return view('jobs.show', compact('job'));
    }
    public function create(){
        return view('jobs.create');
    }
    public function store(JobPostRequest $request){
        $user_id = auth()->user()->id;
        $company = Company::where ('user_id', $user_id)->first();
        $company_id = $company->id;
        Job::create([
            'user_id' => $user_id,
            'company_id' => $company_id,
            'title' => request('title'),
            'slug' => str_slug(request('title')),
            'roles' =>  request('roles'),
            'description' =>  request('description'),
            'category_id' =>  request('category'),
            'position' =>  request('position'),
            'address' =>  request('address'),
            'type' =>  request('type'),
            'status' =>  request('status'),
            'last_date' =>  request('last_date'),

        ]);
        return redirect()->back()->with('message', 'Job Posted Successfully');
    }
    public function myjobs(){
        $jobs = Job::where('user_id', auth()->user()->id)->get();
        return view('jobs.myjobs', compact('jobs'));
    }
    public function apply(Request $request, $id){
        $jobId = Job::find($id);
        $jobId->users()->attach(Auth::user()->id);
        return redirect()->back()->with('message', 'Job Applied Successfully');
    }
    public function applicants(){
        $applicants = Job::has('users')
            ->where('user_id', auth()->user()->id)->get();
        return view('jobs.applicants', compact('applicants'));
    }
    public function alljobs(Request $request){
        $keyword = request('title');
        $type = request('type');
        $category = request('category_id');
        $address = request('address');
        if($keyword||$type||$category||$address){
            $jobs = Job::where('title', 'Like', '%'.$keyword.'%')
            ->orWhere('type', $type)
            ->orWhere('category_id', $category)
            ->orWhere('address', $address)
            ->paginate(10);
            return view('jobs.alljobs', compact('jobs'));
        }
        else{
            $jobs = Job::paginate(10);
            return view('jobs.alljobs', compact('jobs'));
        }

    }
}
