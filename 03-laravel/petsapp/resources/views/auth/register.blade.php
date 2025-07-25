{{--<x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required
                autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required
                autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full" type="password" name="password" required
                autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />

            <x-text-input id="password_confirmation" class="block mt-1 w-full" type="password"
                name="password_confirmation" required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800"
                href="{{ route('login') }}">
                {{ __('Already registered?') }}
            </a>

            <x-primary-button class="ms-4">
                {{ __('Register') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>--}}

@extends('layouts.app')
@section('title', 'Register - PetsApp')
@section('content')
    <form method="post" action="{{ route('register') }}">
        @csrf {{--token de seguridad--}}
        <fieldset class="fieldset w-xs bg-base-200 border border-base-300 p-4 rounded-box">
            <h1 class="text-2xl text-center flex justify-center items-center gap-2">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="size-6">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M17.982 18.725A7.488 7.488 0 0 0 12 15.75a7.488 7.488 0 0 0-5.982 2.975m11.963 0a9 9 0 1 0-11.963 0m11.963 0A8.966 8.966 0 0 1 12 21a8.966 8.966 0 0 1-5.982-2.275M15 9.75a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                </svg>

                Register
            </h1>
                            @if (count($errors->all()) > 0)
                    <div class="flex flex-col gap-1 my-4">
                        @foreach ($errors->all() as $message)
                            <div class="badge badge-error">
                                <svg class="size-[1em]" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g fill="currentColor"><rect x="1.972" y="11" width="20.056" height="2" transform="translate(-4.971 12) rotate(-45)" fill="currentColor" stroke-width="0"></rect><path d="m12,23c-6.065,0-11-4.935-11-11S5.935,1,12,1s11,4.935,11,11-4.935,11-11,11Zm0-20C7.038,3,3,7.037,3,12s4.038,9,9,9,9-4.037,9-9S16.962,3,12,3Z" stroke-width="0" fill="currentColor"></path></g></svg>
                                {{ $message }}
                            </div>
                        @endforeach
                    </div>
                @endif
            <label class="fieldset-label">Document</label>
            <input type="number" name="document" class="input rounded-full w-full" placeholder="1002523853" value="{{old('document')}}"/>

            <label class="fieldset-label">Fullname</label>
            <input type="text" name="fullname" class="input rounded-full w-full" placeholder="Jhon Wick" value="{{old( 'fullname')}}"/>

            <label class="fieldset-label">Gender</label>
            <select name="gender" class="input rounded-full">
            <option value="">Select Gender...</option>
                <option value="female" @if(old('gender')=='female') selected @endif>Female</option>
                <option value="male" @if(old('gender')=='male') selected @endif>Male</option>
            </select>

            <label class="fieldset-label">Birthdate</label>
            <input type="date" name="birthdate" class="input rounded-full w-full" />

            <label class="fieldset-label">Phone</label>
            <input type="number" name="phone" class="input rounded-full w-full" placeholder="3113200765" value="{{old('phone')}}"/>


            <label class="fieldset-label">Email</label>
            <input type="email" name="email" class="input rounded-full w-full" placeholder="Jhon@gmail.com" value="{{old('email')}}"/>

            <label class="fieldset-label">Password</label>
            <input type="password" name="password" class="input rounded-full w-full" placeholder="secret"/>

            <label class="fieldset-label">Confirm Password</label>
            <input type="password" class="input rounded-full w-full" name="password_confirmation" placeholder="secret">


            <button class="btn bg-cyan-800 text-white rounded-full">Login</button>
        </fieldset>
    </form>
@endsection