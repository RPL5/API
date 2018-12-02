<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMakulsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
      */
    public function up()
    {
        Schema::create('makuls', function (Blueprint $table) {
            $table->increments('id_makul');
            $table->string('nama_makul');
            $table->integer('deksripsi');
            $table->integer('sks');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('makuls');
    }
}
