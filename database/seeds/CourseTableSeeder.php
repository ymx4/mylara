<?php

use Illuminate\Database\Seeder;

class CourseTableSeeder extends Seeder
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
            $html = $faker->randomHtml();
            $html = preg_replace('/.*\<body\>(.*)\<\/body\>.*/', '$1', $html);
            App\Models\Course::create([
                'title' => $faker->title,
                'price' => $faker->randomFloat(2, 0, 999999.99),
                'start_time' => $faker->unixTime,
                'start_time' => $faker->unixTime + 86400,
                'address' => $faker->address,
                'content' => $html
            ]);
        }
    }
}
