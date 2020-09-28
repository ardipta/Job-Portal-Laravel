<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Route;

Route::get('/', 'JobController@index');

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');
//job profile
Route::get('/jobs/{id}/{job}', 'JobController@show')->name('jobs.show');
Route::get('/jobs/create', 'JobController@create')->name('jobs.create');
Route::post('/jobs/store', 'JobController@store')->name('jobs.store');
Route::get('/jobs/myjobs', 'JobController@myjobs')->name('jobs.myjobs');
Route::post('/jobs/apply/{id}', 'JobController@apply')->name('jobs.apply');
Route::get('/jobs/applicants', 'JobController@applicants');
Route::get('/jobs/alljobs', 'JobController@alljobs')->name('alljobs');
Route::post('/applications/{id}', 'JobController@apply')->name('apply');

//Save and Unsave Jobs
Route::post('/save/{id}', 'FavouriteController@saveJob');
Route::post('/unsave/{id}', 'FavouriteController@unSaveJob');
//company
Route::get('/company/{id}/{company}', 'CompanyController@index')->name('company.index');
Route::get('/company/create', 'CompanyController@create')->name('company.create');
Route::post('/company/store', 'CompanyController@store')->name('company.store');
Route::post('/company/coverphoto', 'CompanyController@coverphoto')->name('company.coverphoto');
Route::post('/company/logo', 'CompanyController@logo')->name('company.logo');
//user profile
Route::get('user/profile', 'UserProfileController@index')->name('user.profile');
Route::post('profile/store', 'UserProfileController@store')->name('profile.store');
Route::post('profile/coverletter', 'UserProfileController@coverletter')->name('profile.coverletter');
Route::post('profile/resume', 'UserProfileController@resume')->name('profile.resume');
Route::post('profile/avatar', 'UserProfileController@avatar')->name('profile.avatar');

//employer profile

Route::view('employer/profile', 'auth.emp-register')->name('employer.view');
Route::post('employer/profile', 'EmployerRegisterController@store')->name('employer.register');

