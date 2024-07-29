<?php

namespace App\Http\Controllers\Movies;


use App\Models\Movie;
use App\Http\Controllers\Movies\BaseController;
use App\Http\Filters\MovieFilter;
use App\Http\Requests\Movies\FilterRequest;

class IndexController extends BaseController
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(FilterRequest $request)
	{
		$data = $request->validated();
		$filter = app()->make(MovieFilter::class, ['queryParams' => array_filter($data)]);
		$movie = Movie::filter($filter)->paginate(14);
		return view('index', compact('movie'));
	}
}
