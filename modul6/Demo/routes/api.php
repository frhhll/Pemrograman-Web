<?php

use App\Http\Controllers\PetfoodController;
use App\Http\Controllers\Api\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


Route::post('/auth/register', [AuthController::class, 'createUser']);
Route::post('/auth/login', [AuthController::class, 'loginUser']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/petfoods', [PetfoodController::class, 'index']);
Route::get('/petfoods/{id}', [PetfoodController::class, 'show']);
Route::post('/petfoods', [PetfoodController::class, 'store']);
Route::put('/petfoods/{id}', [PetfoodController::class, 'update']);
Route::delete('/petfoods/{id}', [PetfoodController::class, 'destroy']);
