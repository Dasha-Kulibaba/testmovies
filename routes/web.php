<?php


use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Movies\IndexController as MovieIndexController;
use App\Http\Controllers\Movies\CreateController as MovieCreateController;
use App\Http\Controllers\Movies\StoreController as MovieStoreController;
use App\Http\Controllers\Movies\EditController as MovieEditController;
use App\Http\Controllers\Movies\UpdateController as MovieUpdateController;
use App\Http\Controllers\Movies\DestroyController as MovieDestroyController;
use App\Http\Controllers\Movies\PublicController as MoviePublicController;

use App\Http\Controllers\Genres\StoreController as GenreStoreController;
use App\Http\Controllers\Rest\GenreController;
use App\Http\Controllers\Rest\IndexController as RestIndexController;


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

Route::get('/rest/movies', RestIndexController::class);
Route::get('/rest/genres', GenreController::class);

Route::get('/movies', MovieIndexController::class)->name('index');
Route::get('/movies/create', MovieCreateController::class)->name('movie.create');
Route::post('/movies', MovieStoreController::class)->name('movie.store');
Route::get('/movies/{movie}/edit', MovieEditController::class)->name('movie.edit');
Route::patch('/movies/{movie}', MovieUpdateController::class)->name('movie.update');
Route::delete('/movies/{movie}', MovieDestroyController::class)->name('movie.destroy');
Route::get('/{movie}', MoviePublicController::class)->name('movie.public');

Route::post('/genres', GenreStoreController::class)->name('genre.store');
