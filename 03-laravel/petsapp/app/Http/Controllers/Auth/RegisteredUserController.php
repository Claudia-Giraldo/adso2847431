<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;
use Illuminate\View\View;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     */
    public function create(): View
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request): RedirectResponse
    {
        $request->validate([
            'document' => ['required', 'numeric','unique:' . User::class],
            'fullname' => ['required', 'string'],
            'gender' => ['required', 'string'],
            'birthdate' => ['required', 'date'],
            'phone' => ['required', 'string'],
            'email' => ['required', 'lowercase', 'email', 'unique:' . User::class],
            'password' => ['required', 'confirmed', 'min:4'],
        ]);

        $user = User::create([
            'document' => $request->document,
            'fullname' => $request->fullname,
            'gender' => $request->gender,
            'birthdate' => $request->birthdate,
            'phone' => $request->phone,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        event(new Registered($user));

        Auth::login($user);

        return redirect(route('dashboard', absolute: false));
    }
}
