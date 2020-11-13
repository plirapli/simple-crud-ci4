<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time;


class SeedOrang extends \CodeIgniter\Database\Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID');
        for ($i = 0; $i < 20; $i++) {
            $data = [
                'nama' => $faker->name,
                'alamat'    => $faker->address,
                'telp'  => '+62' . $faker->numberBetween($min = 10000000000, $max = 99999999999),
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::createFromTimestamp($faker->unixTime())
            ];
            // Using Query Builder
            $this->db->table('orang')->insert($data);
        }
    }
}
