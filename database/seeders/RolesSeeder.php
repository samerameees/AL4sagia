<?php

namespace Database\Seeders;

use App\Models\Permission;
use App\Models\Role;
use Illuminate\Database\Seeder;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role = Role::first();
        
        if(!$role){
            $role = Role::create([
                'name' => 'super_admin',
                'display_name' => 'Super Admin',
                'description' => '',
            ]);            
        }

        $role->syncPermissions(Permission::pluck('id')->toArray());
    }
}
