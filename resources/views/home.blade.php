@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Favourite Jobs</div>
                    @if(Auth:: user()->user_type=='seeker')
                        @foreach($jobs as $job)
                        <div class="card-body">
                            <div class="card-header"><h1>{{$job->title}}</h1></div>
                            <div class="card-body">
                                {{$job->description}}
                            </div>
                            <div class="card-footer">
                                <span>
                                    <a href="{{route('jobs.show', [$job->id, $job->slug])}}">
                                        Read More
                                    </a>
                                </span>
                                <span>Application Deadline: {{$job->last_date}}</span>
                            </div>
                        </div>
                    @endforeach
                    @endif

            </div>
        </div>
    </div>
</div>
@endsection
