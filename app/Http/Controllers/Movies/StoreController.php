<?php

namespace App\Http\Controllers\Movies;


use App\Http\Requests\Movies\StoreRequest;
use App\Http\Controllers\Movies\BaseController;


class StoreController extends BaseController
{
	/**
	 * Handle the incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function __invoke(StoreRequest $request)
	{

		$data = $request->validated();
		$this->service->store(request()->file('poster'), $data);
		return redirect()->route('index');
	}
}
