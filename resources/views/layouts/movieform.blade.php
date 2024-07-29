@extends('layouts.main')

@section('content')
<div class="create-movie">
	<form class="row g-3" action="@yield('movie-action')" method="POST" enctype="multipart/form-data">
		@csrf
		@yield('token')
		<div class=" col-12  poster-create">
			<label class=" poster-create__image">
				<input type="file" hidden="" name="poster" accept=".jpg, .jpeg, .png">
				<img src="@yield('image-source')" alt="Нажмите, чтобы загрузить постер к фильму" id="poster">
			</label>
		</div>
		<div class="col-12">
			<label for="inputEmail4" class="form-label">Название</label>
			<input type="text" class="form-control" id="inputEmail4" name="name" @yield('movie-name')>
			@error('name')
			<p class="form-error__message">{{ $message }}</p>
			@enderror
		</div>
		<div class="col-12">
			<label for="inputState" class="form-label">Жанры</label>
			<select id="inputState" name="genres[]" class="form-select" multiple size="10">
				@yield('movie-genres')
			</select>
			@error('genres')
			<p class="form-error__message">{{ $message }}</p>
			@enderror
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">@yield('movie-button')</button>
		</div>
	</form>
	<form class="row g-3" action="{{route('genre.store')}}" method="POST">
		@csrf
		<h5>Новый жанр</h5>
		<div class="col-12">
			<label for="inputEmail4" class="form-label">Название</label>
			<input type="text" class="form-control" id="inputEmail4" name="movie-name" value="{{old('movie-name')}}">
			@error('movie-name')
			<p class="form-error__message">{{ $message }}</p>
			@enderror
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">Добавить жанр</button>
		</div>
	</form>
</div>

@vite(['resources/js/poster.js'])
@endsection