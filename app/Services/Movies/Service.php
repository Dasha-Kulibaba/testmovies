<?php

namespace App\Services\Movies;

use App\Models\Movie;


class Service
{

	public function post($poster, $data)
	{
		if ($poster) {
			return 'storage/app/public/posters/' . basename($poster->store('public/posters'));
		}
	}

	public function store($poster, $data)
	{
		$data['poster'] = $this->post($poster, $data) ?? 'storage/app/public/posters/default.jpg';
		$genres = $data['genres'];
		unset($data['genres']);
		$movie = Movie::create($data);
		$movie->genres()->attach($genres);
	}
	public function update($movie, $poster, $data)
	{
		$data['poster'] = $this->post($poster, $data) ?? $movie->poster;
		$genres = $data['genres'];
		unset($data['genres']);
		$movie->update($data);
		$movie->genres()->sync($genres);
	}

	public function publ($movie)
	{
		if ($movie->is_published === 0) {
			$movie->update([
				'is_published' => '1',
			]);
		} else
			$movie->update([
				'is_published' => '0',
			]);
	}
}
