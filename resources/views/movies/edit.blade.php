@extends('layouts.movieform')

@section('movie-action')
    {{ route('movie.update', $movie->id) }}
@endsection

@section('token')
    @method('patch')
@endsection

@section('image-source')
    {{ Vite::asset($movie->poster) }}
@endsection

@section('movie-name')
    value="{{ $movie->name }}"
@endsection

@section('movie-genres')
    @foreach ($genres as $item)
        <option @foreach ($movie->genres as $genr)
		  {{ $item->id === $genr->id ? 'selected' : '' }} @endforeach
            value="{{ $item->id }}"> {{ $item->name }}</option>
    @endforeach
@endsection

@section('movie-button')
    Обновить
@endsection
