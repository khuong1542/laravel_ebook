<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        // $this->call([AuthorBookSeeder::class,]);
        // $this->call([AuthorSeeder::class,]);
        $this->call([BookSeeder::class,]);
        // $this->call([CategoryBookSeeder::class,]);
        // $this->call([CategorySeeder::class,]);
        // $this->call([PostShareCateDetailSeeder::class,]);
        // $this->call([PostShareCategorySeeder::class,]);
        // $this->call([PostShareSeeder::class,]);
        // $this->call([RoleSeeder::class,]);
    }
}
