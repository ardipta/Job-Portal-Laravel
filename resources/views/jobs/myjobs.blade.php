@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">My Jobs</div>

                    <div class="card-body">
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
                </div>
            </div>
        </div>
    </div>
@endsection

