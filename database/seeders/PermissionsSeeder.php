<?php

namespace Database\Seeders;

use App\Models\Permission;
use Illuminate\Database\Seeder;

class PermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //role
        Permission::create(['name' => 'create_roles', 'display_name' => 'إضافة أدوار', 'description' => '']);
        Permission::create(['name' => 'read_roles', 'display_name' => 'قراءة أدوار', 'description' => '']);
        Permission::create(['name' => 'update_roles', 'display_name' => 'تعديل أدوار', 'description' => '']);
        Permission::create(['name' => 'delete_roles', 'display_name' => 'حذف أدوار', 'description' => '']);

        //users
        Permission::create(['name' => 'create_users', 'display_name' => 'إضافة مديرين', 'description' => '']);
        Permission::create(['name' => 'read_users', 'display_name' => 'قراءة مديرين', 'description' => '']);
        Permission::create(['name' => 'delete_users', 'display_name' => 'حذف مديرين', 'description' => '']);
        Permission::create(['name' => 'update_users', 'display_name' => 'تعديل مديرين', 'description' => '']);
        Permission::create(['name' => 'activate_users', 'display_name' => 'تعطيل وتفعيل مديرين', 'description' => '']);

        //clients
        Permission::create(['name' => 'create_clients', 'display_name' => 'إضافة مستخدمين', 'description' => '']);
        Permission::create(['name' => 'read_clients', 'display_name' => 'قراءة مستخدمين', 'description' => '']);
        Permission::create(['name' => 'delete_clients', 'display_name' => 'حذف مستخدمين', 'description' => '']);
        Permission::create(['name' => 'update_clients', 'display_name' => 'تعديل مستخدمين', 'description' => '']);
        Permission::create(['name' => 'activate_clients', 'display_name' => 'تعطيل وتفعيل مستخدمين', 'description' => '']);


        //courses
        Permission::create(['name' => 'create_courses', 'display_name' => 'إضافة كورسات', 'description' => '']);
        Permission::create(['name' => 'read_courses', 'display_name' => 'قراءة كورسات', 'description' => '']);
        Permission::create(['name' => 'delete_courses', 'display_name' => 'حذف كورسات', 'description' => '']);
        Permission::create(['name' => 'update_courses', 'display_name' => 'تعديل كورسات', 'description' => '']);
        Permission::create(['name' => 'activate_courses', 'display_name' => 'تعطيل وتفعيل كورسات', 'description' => '']);



        //faqs
        Permission::create(['name' => 'create_faqs', 'display_name' => 'إضافة الأسئله الشائعه', 'description' => '']);
        Permission::create(['name' => 'read_faqs', 'display_name' => 'قراءة الأسئله الشائعه', 'description' => '']);
        Permission::create(['name' => 'delete_faqs', 'display_name' => 'حذف الأسئله الشائعه', 'description' => '']);
        Permission::create(['name' => 'update_faqs', 'display_name' => 'تعديل الأسئله الشائعه', 'description' => '']);
        Permission::create(['name' => 'activate_faqs', 'display_name' => 'تعطيل وتفعيل الأسئله الشائعه', 'description' => '']);

        //partners
        Permission::create(['name' => 'create_partners', 'display_name' => 'إضافة الشركاء', 'description' => '']);
        Permission::create(['name' => 'read_partners', 'display_name' => 'قراءة الشركاء', 'description' => '']);
        Permission::create(['name' => 'delete_partners', 'display_name' => 'حذف الشركاء', 'description' => '']);
        Permission::create(['name' => 'update_partners', 'display_name' => 'تعديل الشركاء', 'description' => '']);
        Permission::create(['name' => 'activate_partners', 'display_name' => 'تعطيل وتفعيل الشركاء', 'description' => '']);

        //testimonials
        Permission::create(['name' => 'create_testimonials', 'display_name' => 'إضافة اراء العملاء', 'description' => '']);
        Permission::create(['name' => 'read_testimonials', 'display_name' => 'قراءة اراء العملاء', 'description' => '']);
        Permission::create(['name' => 'delete_testimonials', 'display_name' => 'حذف اراء العملاء', 'description' => '']);
        Permission::create(['name' => 'update_testimonials', 'display_name' => 'تعديل اراء العملاء', 'description' => '']);
        Permission::create(['name' => 'activate_testimonials', 'display_name' => 'تعطيل وتفعيل اراء العملاء', 'description' => '']);


        //trainers
        Permission::create(['name' => 'create_trainers', 'display_name' => 'إضافة المدربين', 'description' => '']);
        Permission::create(['name' => 'read_trainers', 'display_name' => 'قراءة المدربين', 'description' => '']);
        Permission::create(['name' => 'delete_trainers', 'display_name' => 'حذف المدربين', 'description' => '']);
        Permission::create(['name' => 'update_trainers', 'display_name' => 'تعديل المدربين', 'description' => '']);
        Permission::create(['name' => 'activate_trainers', 'display_name' => 'تعطيل وتفعيل المدربين', 'description' => '']);


        //works
        Permission::create(['name' => 'create_works', 'display_name' => 'إضافة الاعمال السابقه', 'description' => '']);
        Permission::create(['name' => 'read_works', 'display_name' => 'قراءة الاعمال السابقه', 'description' => '']);
        Permission::create(['name' => 'delete_works', 'display_name' => 'حذف الاعمال السابقه', 'description' => '']);
        Permission::create(['name' => 'update_works', 'display_name' => 'تعديل الاعمال السابقه', 'description' => '']);
        Permission::create(['name' => 'activate_works', 'display_name' => 'تعطيل وتفعيل الاعمال السابقه', 'description' => '']);

        //settings
        Permission::create(['name' => 'read_settings', 'display_name' => 'قراءة الإعدادات', 'description' => '']);
        Permission::create(['name' => 'update_settings', 'display_name' => 'تعديل الإعدادات', 'description' => '']);
        
        //enrolls
        Permission::create(['name' => 'read_enrolls', 'display_name' => 'قراءة طلبات الإشتراكات', 'description' => '']);
        Permission::create(['name' => 'update_enrolls', 'display_name' => 'تعديل طلبات الإشتراكات', 'description' => '']);
    }
}
