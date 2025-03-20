<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;    
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //primer usuario, forma de insertar datos en la base de datos
        $user = new User; //User viene siendo el modelo, tambien se puede llamar la direccion acá App\Models\User
        $user->document  = 75000001;
        $user->fullname  = 'Jhon Wick';
        $user->gender    = 'Male';
        $user->birthdate = '1980-10-10';
        $user->phone     =  3205678978;
        $user->email     = 'jwick@gmail.com';
        $user->password  = bcrypt('admin'); //metodo que encrypta la contraseña
        $user->role  = 'Admin';
        $user->save();
    

        $user = new User; 
        $user->document  = 75000002;
        $user->fullname  = 'Lara Croft';
        $user->gender    = 'Female';
        $user->birthdate = '1994-08-05';
        $user->phone     =  3209891234;
        $user->email     = 'lara@gmail.com';
        $user->password  = bcrypt('12345'); //metodo que encrypta la contraseña
        $user->save();
    }
}


