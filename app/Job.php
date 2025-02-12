<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    protected $guarded = [];
    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function company(){
        return $this->belongsTo('App\Company', 'id');
    }
    public function users(){
        return $this->belongsToMany(User::class)->withTimestamps();
    }
    public function checkApplication(){
        return \DB::table('job_user')->where('user_id', auth()->user()->id)->
            where ('job_id', $this->id)->exists();
    }
    public function favorites(){
        return $this->belongsToMany(Job::class, 'favourites', 'job_id', 'user_id')->withTimestamps();
    }
    public function checkSaved(){
        return \DB::table('favourites')->where('user_id', auth()->user()->id)->
        where ('job_id', $this->id)->exists();
    }
}
