<?php

namespace App\Http\Controllers\Rest;

use App\Http\Controllers\Controller;
use App\Http\Requests\Movies\FilterRequest;
use Illuminate\Http\Request;
use App\Http\Filters\MovieFilter;
use App\Http\Resources\RestResource;
use App\Models\Movie;


class IndexController extends Controller
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
		$filter = app()->make(MovieFilter::class, ['queryParams' => array_filter($data)]);
		$movie = Movie::filter($filter)->paginate($per_page, ['*'], 'page', $page);
		return RestResource::collection($movie);
	}
}
