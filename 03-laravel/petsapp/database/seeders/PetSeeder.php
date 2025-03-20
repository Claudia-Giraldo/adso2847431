<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class PetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB :: table('pets') ->insert([
            'name'      => 'Firulais',
            'kind'      => 'Perro',
            'weight'    => '16',
            'age'       => '3',
            'breed'     => 'Shiba Inu',
            'location'  => 'kioto',
            'description' => 'The Shiba Inu is a small, agile, and intelligent dog with a fox-like face, curly tail, and a confident, spirited personality.',
            'created_at' => now(),

        ]);

        DB :: table('pets') ->insert([
            'name'      => 'Michi',
            'kind'      => 'Cat',
            'weight'    => '4',
            'age'       => '8',
            'breed'     => 'Angora',
            'location'  => 'Osaka',
            'description' => 'The Angora is a fluffy, long-haired breed of rabbit or cat, known for its soft fur, gentle temperament, and elegant appearance.',
            'created_at' => now(),
        ]);

        DB :: table('pets') ->insert([
            'name'      => 'Killer',
            'kind'      => 'Dog',
            'weight'    => '5',
            'age'       => '48',
            'breed'     => 'French Poodle',
            'location'  => 'Tokio',
            'description' => 'The French Poodle is an intelligent, elegant, curly-haired dog, known for its loyalty, agility, playful nature, and affectionate companionship.',
            'created_at' => now(),
        ]);
    }
}
