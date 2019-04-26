<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    public $timestamps = false;
    // Table
    protected $table = 'countries';
    // Primary key
    public $primaryKey = 'id';

    public function cities() {
        return $this->hasMany('App\City');
    }
}
