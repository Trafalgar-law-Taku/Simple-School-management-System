<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('students', studentController::class);
    $router->resource('degrees', degreeController::class);
    $router->resource('staff', staffController::class);

    $router->resource('categories', categoryController::class);
    $router->resource('updates', updateController::class);
});
