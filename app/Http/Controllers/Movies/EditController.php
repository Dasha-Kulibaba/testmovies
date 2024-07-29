<?php

namespace App\Http\Controllers\Movies;

use App\Models\Genre;
use App\Models\Movie;
use App\Http\Controllers\Movies\BaseController;
use Illuminate\Http\Request;

class EditController extends BaseController
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(Request $request, Movie $movie)
	{

		$genres = Genre::all();
		return view('movies.edit', compact('movie', 'genres'));
	}
}
