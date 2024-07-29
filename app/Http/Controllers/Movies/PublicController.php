<?php

namespace App\Http\Controllers\Movies;

use App\Models\Movie;
use App\Http\Controllers\Movies\BaseController;
use Illuminate\Http\Request;

class PublicController extends BaseController
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(Request $request, Movie $movie)
	{

		$this->service->publ($movie);
		return redirect()->route('index');
	}
}
