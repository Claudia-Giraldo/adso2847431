<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Adoption extends Model
{
    protected $fillable = [
        'user_id',
        'pet_id',

    ];
    //relationship: adoption belongs to user

    public function user(){
       return $this->belongsTo(User::class); 

    }
     //relationship: adoption belongs to pet; la adopcion pertenece a una mascota

     public function pet(){
       return $this->belongsTo(Pet::class); 

    }
}
