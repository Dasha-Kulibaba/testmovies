<?php

namespace App\Http\Controllers\Movies;

use App\Models\Movie;
use App\Http\Controllers\Movies\BaseController;
use Illuminate\Http\Request;

class DestroyController extends BaseController
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(Request $request, Movie $movie)
	{
		$movie->delete();
		return redirect()->route('index');
	}
}
