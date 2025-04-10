<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::get('show/users', function () {
    $users = \App\Models\User::all();
   // dd($users->toArray());
    return view('users-factory')->with('users', $users);
});


Route::get('hello', function () {
    return "<h1>Hello Laravel</h1>";
})->name('hello');

Route::get('show/pets', function () {
    $pets = \App\Models\Pet::all();
   // var_dump($pets->toArray());
   dd($pets->toArray()); //dd->dump and die
    
});

Route::get('challenge/users', function () {
    $users = \App\Models\User::limit(20)->get();

    $code = "<table style='border-collapse: collapse; margin: 2rem auto; font-family : Arial'>
                    <tr>
                        <th style='background: gray; color: white; padding: 0.4rem'>Id</th>
                        <th style='background: gray; color: white; padding: 0.4rem'>Fullname</th>
                        <th style='background: gray; color: white; padding: 0.4rem'>Age</th>
                        <th style='background: gray; color: white; padding: 0.4rem'>Created At</th>
                        
                    </tr>";

                   
                    foreach ($users as $user){
                        $code .= ($user->id%2 == 0) ? "<tr style='background: #ddd'>" : "<tr>";
                        $code .= "<td style='border: 1px solid #ddd; padding: 0.4rem'>".$user->id."</td>";
                        $code .= "<td style='border: 1px solid #ddd; padding: 0.4rem'>".$user->fullname."</td>";
                        $code .= "<td style='border: 1px solid #ddd; padding: 0.4rem'>".Carbon::parse($user->birthdate)->age." years old</td>";
                        $code .= "<td style='border: 1px solid #ddd; padding: 0.4rem'>".$user->created_at->diffForHumans()."</td>";
                        $code .= "</tr>";
                        }
                        return $code. "</table>";
                    });
                        
             Route::get('view/blade', function () {
                $title = "Examples Blade";
                $pets = App\Models\Pet::whereIn('kind', ['dog', 'cat'])->get();
                                    
                return view('example-view')
                ->with('title', $title)
                ->with('pets', $pets);
             });    
             
             Route::get('/view/info/{id}', function () {
                $title = "Info Pet";

                $pet = \App\Models\Pet::find(request()->id);
                return view('pets-info')
                ->with('title', $title)
                ->with('pet', $pet);
             });
