<?php

    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->decimal('price');
            $table->unsignedInteger('start_time');
            $table->unsignedInteger('end_time');
            $table->string('address');
            $table->unsignedInteger('number_of_a');
            //开课人数
            $table->text('content');
            $table->timestamps();
        });
    }

    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('parent_id')->default(0);
            $table->integer('order')->default(0);
            $table->string('title', 50);

            $table->timestamps();
        });
    }
