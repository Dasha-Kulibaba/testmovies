<?php

namespace App\Http\Controllers\Genres;

use App\Http\Controllers\Controller;
use App\Models\Genre;
use Illuminate\Http\Request;

class StoreController extends Controller
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(Request $request)
	{
		request()->validate(['movie-name' => 'required|string|max:255',]);
		$data['name'] = $request['movie-name'];
		Genre::firstOrCreate($data);
		return redirect()->back();
	}
}
