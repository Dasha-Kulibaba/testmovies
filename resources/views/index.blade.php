@extends('layouts.main')


@section('content')
<a href="{{route('movie.create')}}" class="btn btn-primary">Добавить фильм</a>
<div class="cards__container">
	@foreach ($movie as $item)
	<div class="card" style="width: 18rem;">
		<img src="{{ Vite::asset($item->poster) }}" class="card-img-top" alt="{{ $item->name }}">
		<div class="card-body">
			<h5 class="card-title">{{ $item->name }}</h5>
		</div>
		<ul class="list-group list-group-flush">
			@foreach ($item->genres as $genre)
			<li class="list-group-item">{{ $genre->name }}</li>
			@endforeach
		</ul>
		<div class="card-body">
			<a href="{{route('movie.public',$item->id)}}" class="btn btn-primary">{{ $item->is_published === 0 ? 'Опубликовать' : 'Убрать из опубликованных' }}</a>
			<a href="{{route('movie.edit',$item->id)}}" class="btn btn-primary">Редактировать</a>
			<form action="{{route('movie.destroy',$item->id)}}" method="post">
				@csrf
				@method('delete')
				<button type="submit" class="btn btn-primary">Удалить</button>
			</form>

		</div>
	</div>
	@endforeach
</div>
<div>
	{{$movie->withQueryString()->links()}}
</div>
@endsection