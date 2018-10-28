<?php

use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker\Factory::create('zh_CN');

        for($i = 0; $i < 10; $i++) {
            App\Models\Category::create([
                'title' => $faker->title,
                'parent_id' => $i ? $faker->biasedNumberBetween(0, $i) : 0,
                'order' => $i,
            ]);
        }
    }
}
