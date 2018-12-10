<?php
 
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
 
$router->get('/', function () use ($router) {
return $router->app->version();
});
 
$router->post(
'auth/login',
[
'uses' => 'AuthController@authenticate'
]
);
 
$router->group(
['middleware' => 'jwt.auth'],
function() use ($router) {
$router->get('users', function() {
$users = \App\User::all();
return response()->json($users);
});
}
);
 
$router->group(
['middleware' => 'jwt.auth'],
function() use ($router) {
$router->get('makul', function() {
$makul = \App\Makul::all();
return response()->json($makul);
});
}
);
 
 
$router->group(['prefix' => 'api'], function () use ($router) {
$router->get('makul', 'MakulController@index');
$router->get('makul/{id_makul}', 'MakulController@show');
$router->get('krs/{id_nim}', 'MakulController@tampil_krs');
$router->post('makul', 'MakulController@store');
$router->put('makul/{id_makul}', 'MakulController@update');
$router->delete('makul/{id_makul}', 'MakulController@delete');
 
});