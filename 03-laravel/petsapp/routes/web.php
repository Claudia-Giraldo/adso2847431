<?php

use Illuminate\Support\Facades\Route;
use Livewire\Volt\Volt;

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::view('dashboard', 'dashboard')
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::middleware(['auth'])->group(function () {
    Route::redirect('settings', 'settings/profile');

    Volt::route('settings/profile', 'settings.profile')->name('settings.profile');
    Volt::route('settings/password', 'settings.password')->name('settings.password');
    Volt::route('settings/appearance', 'settings.appearance')->name('settings.appearance');
});

//LISTAR TODOS LOS USUARIOS QUE ESTAN EN LA FABRICA

Route:: get('show/users', function(){
    $users = App\Models\User::all();
    //dd($users->toArray()); //muestra informacion pero no ejecuta nada
    return view('users-factory')->with('users', $users); //lo que esta entre comillas es el alias 

});
//reguisitos para la vista tiene que tener play