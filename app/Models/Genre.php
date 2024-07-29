<?php

namespace App\Models;

use App\Models\Traits\Filterable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Genre extends Model
{
	use HasFactory;
	use SoftDeletes;
	use Filterable;

	protected $guarded = false;

	public function movies()
	{
		return $this->belongsToMany(Movie::class, 'movie_genres', 'genre_id', 'movie_id');
	}
}
