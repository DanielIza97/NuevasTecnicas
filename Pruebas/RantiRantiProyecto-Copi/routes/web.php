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

Route::get('/', function () {
    return view('Index');
});
Route::get('/welcome', function () {
    return view('welcome');
});
Route::resource('/clientes', 'ClientesController');

Route::resource('/productos', 'ProductosController');

Route::resource('/administradores', 'AdministradoresController');

Route::resource('/recetas', 'RecetasController');

Route::get('/ingredientes/{idrecetas}', 'IngredientesController@index_recetas');

Route::post('/ingredientes/create_recetas', 'IngredientesController@create_recetas');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');