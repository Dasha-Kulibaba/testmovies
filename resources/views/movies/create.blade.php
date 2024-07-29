@extends('layouts.movieform')

@section('movie-action')
    {{ route('movie.store') }}
@endsection

@section('image-source')
    #
@endsection


@section('movie-name')
    value="{{ old('name') }}"
@endsection

@section('movie-genres')
    @foreach ($genres as $item)
        <option value="{{ $item->id }}"> {{ $item->name }}</option>
    @endforeach
@endsection

@section('movie-button')
    Создать
@endsection
