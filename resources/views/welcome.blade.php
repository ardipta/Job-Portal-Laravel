@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <table class="table">
                <thead>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                </thead>
                <tbody>
                @foreach($jobs as $job)
                    <tr>
                        <td>
                            <img src="{{asset('avatar/logo.png')}}" width="80">
                        </td>
                        <td>
                            Position: {{$job->position}}<br>
                            Job Type:<i class="fa fa-clock"></i>&nbsp;&nbsp; {{$job->type}}
                        </td>
                        <td>
                            <i class="fa fa-map-marker"></i> &nbsp;&nbsp;Address: {{$job->address}}
                        </td>
                        <td>
                            <i class="fa fa-calendar-check"></i> &nbsp;&nbsp;Date: {{$job->created_at->diffForHumans()}}
                        </td>
                        <td>
                            <a href="{{route('jobs.show', [$job->id, $job->slug])}}">
                                <button class="btn btn-outline-primary btn-sm">Apply</button>
                            </a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <div>
            <a href="{{route('alljobs')}}">
                <button class="btn btn-outline-secondary btn lg" style="width: 100%">
                    Browse All Jobs
                </button>
            </a>
        </div>
        <h1>Features Companies</h1><br><br>
    </div>
    <div class="container">
        <div class="row">
            @foreach($companies as $company)
            <div class="col-md-3">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">{{$company->cname}}</h5>
                        <p class="card-text">{{str_limit($company->description, 20)}}</p>
                        <a href="{{route('company.index', [$company->id, $company->slug])}}" class="btn btn-primary">Visit Company</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
@endsection

