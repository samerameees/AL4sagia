<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach (config('settings') as $key => $setting) {
            $s = Setting::where('key', $setting['key'])->first();
            if (!$s) {
                Setting::create($setting);
            }
        }
    }
}
