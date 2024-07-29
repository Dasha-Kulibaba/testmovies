<?php

namespace App\Http\Controllers\Movies;

use App\Http\Controllers\Controller;
use App\Services\Movies\Service;

class BaseController extends Controller
{
	public $service;

	public function __construct(Service $service)
	{
		$this->service = $service;
	}
}
