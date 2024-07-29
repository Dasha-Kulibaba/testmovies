<?php

namespace App\Models;

use App\Models\Traits\Filterable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Movie extends Model
{
	use HasFactory;
	use SoftDeletes;
	use Filterable;

	protected $guarded = false;

	public function genres()
	{
		return $this->belongsToMany(Genre::class, 'movie_genres', 'movie_id', 'genre_id');
	}
}
