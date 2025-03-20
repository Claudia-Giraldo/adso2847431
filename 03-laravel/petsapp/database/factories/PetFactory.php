<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pet>
 */
class PetFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $kind = fake()->randomElements(["Dog", "Cat", "Rabbit", "Fish", "Bird"]);

        return [
            'name'        => fake()->domainword,
            'kind'        => implode($kind),
            'weight'      => fake()->numberBetween(2, 80),
            'age'         => fake()->randomNumber(2, true),
            'breed'       => fake()->colorName(),
            'location'    => fake()->city(),
            'description' => fake()->sentence(10), //paragraph tambien se puede usar pero es mas largo 
            'created_at'  => now(),
        ];
    }
}
