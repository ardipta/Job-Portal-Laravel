@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <form action="{{route('alljobs')}}" method="get">
                <div class="form-inline">
                    <div class="form-group">
                        <label>Keyword&nbsp;&nbsp;</label>
                        <input type="text" name="title" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Employment Type&nbsp;&nbsp;</label>
                        <select name="type" class="form-control">
                            <option>--Select Category--</option>
                            <option value="fulltime">Full Time</option>
                            <option value="parttime">Part Time</option>
                            <option value="casual">Casual</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Category&nbsp;&nbsp;</label>
                        <select name="category_id" class="form-control">
                            <option>--Select Category--</option>
                            @foreach(App\Category::all() as $cat)
                                <option value="{{$cat->id}}">{{$cat->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Address&nbsp;&nbsp;</label>
                        <input type="text" name="address" class="form-control">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-outline-primary">Search</button>
                    </div>
                </div>
            </form>

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
            {{$jobs->links()}}
        </div>
    </div>

@endsection


