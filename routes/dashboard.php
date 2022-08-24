<?php

use Illuminate\Support\Facades\Route;


Route::group(['prefix' => 'admin'], function () {
    // Auth::routes(['register' => false]);

    // Authentication Routes...
    Route::get('login', [App\Http\Controllers\Dashboard\Auth\LoginController::class, 'showLoginForm'])->name('admin.login');
    Route::post('login', [App\Http\Controllers\Dashboard\Auth\LoginController::class, 'login'])->name('admin.login');
    Route::post('logout', [App\Http\Controllers\Dashboard\Auth\LoginController::class, 'logout'])->name('logout');

    // Password Reset Routes...
    Route::get('password/reset/{token?}', [App\Http\Controllers\Dashboard\Auth\ForgotPasswordController::class, 'showLinkRequestForm'])->name('password.request');
    Route::post('password/email', [App\Http\Controllers\Dashboard\Auth\ForgotPasswordController::class, 'sendResetLinkEmail'])->name('password.email');
    Route::post('password/reset', [App\Http\Controllers\Dashboard\Auth\ForgotPasswordController::class, 'reset'])->name('password.email');

    Route::get('notActive', function () {
        if (auth()->user()->is_active) {
            return redirect()->route('admin.home');
        }
        return view('dashboard.errors.AcountIsNotActive');
    })->name('admin.notActive');

    Route::middleware(['auth:web', 'checkActiveAdmin'])->name('admin.')->group(function () {
        Route::get('/', [App\Http\Controllers\Dashboard\HomeController::class, 'index'])->name('home');

        Route::resource('users', \App\Http\Controllers\Dashboard\UserController::class);
        Route::post('/store-token', [\App\Http\Controllers\Dashboard\UserController::class,'storeToken'])->name('store.fcm_token');

        Route::resource('trainers', \App\Http\Controllers\Dashboard\TrainerController::class);

        Route::resource('teams', \App\Http\Controllers\Dashboard\TeamController::class);
        Route::resource('courses', \App\Http\Controllers\Dashboard\CourseController::class);
        Route::resource('events', \App\Http\Controllers\Dashboard\EventController::class);
        Route::resource('faqs', \App\Http\Controllers\Dashboard\FaqController::class);
        Route::resource('partners', \App\Http\Controllers\Dashboard\PartnerController::class);
        Route::resource('testimonials', \App\Http\Controllers\Dashboard\TestimonialController::class);
        Route::resource('works', \App\Http\Controllers\Dashboard\WorkController::class);
        Route::resource('enrolls', \App\Http\Controllers\Dashboard\EnrollController::class);
        Route::resource('clients', \App\Http\Controllers\Dashboard\ClientController::class);

        Route::resource('contacts', \App\Http\Controllers\Dashboard\ContactController::class)->only(['index','destroy']);

        Route::resource('roles', \App\Http\Controllers\Dashboard\RoleController::class);
        Route::post('changeActiveStatus/{id}', [\App\Http\Controllers\Dashboard\ActiveController::class, 'changeActiveStatue'])->name('changeActiveStatus');
    
        Route::group(['prefix' => 'settings'], function () {
            Route::get('web', [\App\Http\Controllers\Dashboard\SettingController::class, 'web'])->name('settings.web');
            Route::put('update', [\App\Http\Controllers\Dashboard\SettingController::class, 'update'])->name('settings.update');
        });

        Route::group(['prefix' => 'courses'], function () {
            Route::get('{course}/comments', [\App\Http\Controllers\Dashboard\CommentController::class, 'index'])->name('comments.index');
            Route::delete('{course}/comments/{comment}', [\App\Http\Controllers\Dashboard\CommentController::class, 'destroy'])->name('comments.destroy');
        });
    });
});
