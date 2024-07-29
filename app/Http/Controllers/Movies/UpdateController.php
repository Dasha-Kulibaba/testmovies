<?php

namespace App\Http\Controllers\Movies;

use App\Http\Requests\Movies\UpdateRequest;
use App\Models\Movie;
use App\Http\Controllers\Movies\BaseController;

class UpdateController extends BaseController
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(UpdateRequest $request, Movie $movie)
	{

		$data = $request->validated();
		if ($request['poster']) {
			$data['poster'] = 'storage/app/public/posters/' . basename($request['poster']->file('poster')->store('public/posters'));
		}
		$this->service->update($movie, request()->file('poster'), $data);
		return redirect()->route('index');
	}
}
