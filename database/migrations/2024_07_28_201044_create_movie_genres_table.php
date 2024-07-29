<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('movie_genres', function (Blueprint $table) {
			$table->id();
			$table->unsignedBigInteger('movie_id');
			$table->unsignedBigInteger('genre_id');

			$table->timestamps();

			$table->index('movie_id', 'movie_genre_idx');
			$table->foreign('movie_id', 'movie_genre_fk')->references('id')->on('movies')->onDelete('cascade')->onUpdate('cascade');
			$table->index('genre_id', 'genre_movie_idx');
			$table->foreign('genre_id', 'genre_movie_fk')->references('id')->on('genres')->onDelete('cascade')->onUpdate('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('movie_genres');
	}
};
