<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;

class AdminsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::first();

        if(!$user){
            $user = User::create([
                'name' => 'admin',
                'email' => 'test@test.com',
                'password' => bcrypt(123456),
            ]);
        }

        $role = Role::first();

        $user->attachRole($role->id);

        $user->syncPermissions($role->permissions);
    }
}