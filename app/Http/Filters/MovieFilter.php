<?php


namespace App\Http\Filters;


use Illuminate\Database\Eloquent\Builder;

class MovieFilter extends AbstractFilter
{
	public const ID = 'id';
	public const NAME = 'name';
	public const iS_PUBLISHED = 'is_published';
	public const GENRE = 'genre';


	protected function getCallbacks(): array
	{
		return [
			self::ID => [$this, 'id'],
			self::NAME => [$this, 'name'],
			self::iS_PUBLISHED => [$this, 'is_published'],
			self::GENRE => [$this, 'genre'],
		];
	}

	public function id(Builder $builder, $value)
	{
		$builder->where('id', '=', $value);
	}

	public function name(Builder $builder, $value)
	{
		$builder->where('name', 'like', "%{$value}%");
	}

	public function is_published(Builder $builder, $value)
	{
		$builder->where('is_published', $value);
	}

	public function genre(Builder $builder, $value)
	{
		$builder->whereHas('genres', fn ($query) => $query->where('genres.id', '=', $value));
	}


	// public function categoryId(Builder $builder, $value)
	// {
	// 	$builder->where('category_id', $value);
	// }
}
