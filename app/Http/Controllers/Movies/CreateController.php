<?php

namespace App\Http\Controllers\Movies;

use App\Models\Genre;
use App\Http\Controllers\Movies\BaseController;
use Illuminate\Http\Request;

class CreateController extends BaseController
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(Request $request)
	{
		$genres = Genre::all();
		return view('movies.create', compact('genres'));
	}
}
