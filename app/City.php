<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    public $timestamps = false;
    // Table
    protected $table = 'cities';
    // Primary key
    public $primaryKey = 'id';

    public function country() {
        return $this->belongsTo('App\Country');
    }
}
