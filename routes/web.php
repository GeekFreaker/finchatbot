<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () { return view('welcome'); });

//all the routes are working 
Route::get('/interactions/completion', 'InteractionsController@completion')->name('interactions.completion');
Route::get('/interactions/engagement', 'InteractionsController@engagement')->name('interactions.engagement');
Route::get('/interactions/dropoff', 'InteractionsController@dropoff')->name('interactions.dropoff');

Route::match(['get', 'post'], '/botman', 'BotManController@handle');
