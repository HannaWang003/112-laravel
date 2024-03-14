<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Dior extends Model
{
    use HasFactory;
    protected $table = 'diors';
    public function productRelation(): HasOne
    {
        return $this->hasOne(Product::class);
    }
    public function colorRelations(): HasMany
    {
        return $this->hasMany(Color::class);
    }
}
