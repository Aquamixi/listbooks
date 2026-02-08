<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/hello_world_laravel', function (Request $request) {
    return 'Hello World (laravel)';
});
