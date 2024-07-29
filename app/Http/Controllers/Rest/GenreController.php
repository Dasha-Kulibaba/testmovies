<?php

namespace App\Http\Controllers\Rest;

use App\Http\Controllers\Controller;
use App\Http\Requests\Movies\FilterRequest;
use App\Http\Filters\GenreFilter;
use App\Http\Resources\RestResource;
use App\Models\Genre;

class GenreController extends Controller
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
		$per_page = $request['per_page'] ?? 14;
		$page = $request['page'] ?? 1;
		$filter = app()->make(GenreFilter::class, ['queryParams' => array_filter($data)]);
		$movie = Genre::filter($filter)->paginate($per_page, ['*'], 'page', $page);

		return RestResource::collection($movie);
	}
}
