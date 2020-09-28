@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="company-profile">
                @if(empty(Auth()->user()->company->cover_photo))
                    <img style="width: 100%" src="{{asset('avatar/logo.png')}}" width="100" height="200">
                @else
                    <img style="width: 100%" src="{{asset('uploads/cover')}}/{{Auth()->user()->company->cover_photo}}" width="100" height="200">
                @endif
            </div>
            <div class="company-des"><br>
                @if(empty(Auth()->user()->profile->avatar))
                    <img src="{{asset('avatar/logo.png')}}" width="100" height="100">
                @else
                    <img src="{{asset('uploads/avatar')}}/{{Auth()->user()->profile->avatar}}" width="100" height="100">
                @endif
                <h1>{{$company->cname}}</h1>
                <p>{{$company->description}}</p>
                <p><b>Slogan : </b>&nbsp;{{$company->slogan}}</p>
                <p><b>Address : </b>&nbsp;{{$company->address}}</p>
                <p><b>Phone : </b>&nbsp;{{$company->phone}}</p>
                <p><b>Website : </b>&nbsp;{{$company->website}}</p>
            </div>
            <table class="table">
                <thead>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                </thead>
                <tbody>
                @foreach($company->jobs as $job)
                    <tr>
                        <td>
                            <img src="{{asset('avatar/logo.png')}}" width="80">
                        </td>
                        <td>
                            Position: {{$job->position}}<br>
                            Job Type:<i class="fa fa-clock"></i>&nbsp; {{$job->type}}
                        </td>
                        <td>
                            <i class="fa fa-map-marker"></i>&nbsp;Address: {{$job->address}}
                        </td>
                        <td>
                            <i class="fa fa-calendar-check"></i>&nbsp;Date: {{$job->created_at->diffForHumans()}}
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
    </div>
@endsection
