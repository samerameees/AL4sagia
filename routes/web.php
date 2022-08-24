<?php

use App\Http\Controllers\Web\ClientController;
use App\Http\Controllers\Web\CommentController;
use App\Http\Controllers\Web\ContactController;
use App\Http\Controllers\Web\EnrollController;
use App\Models\Course\Course;
use App\Models\Event\Event;
use App\Models\Trainer\Trainer;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('web.index');
})->name('home');

Route::get('/trainers', function () {
    return view('web.pages.trainers', ['trainers' => Trainer::trainer()->get()]);
})->name('trainers');

Route::get('/courses', function () {
    return view('web.pages.courses', ['courses' => Course::courses()->get()]);
})->name('courses.index');

Route::get('/events', function () {
    return view('web.pages.events', ['events' => Event::all()]);
})->name('events.index');

Route::get('/workshops', function () {
    return view('web.pages.courses', ['courses' => Course::workshops()->get()]);
})->name('workshops');

Route::get('/internships', function () {
    return view('web.pages.internships', ['courses' => Course::internships()->get()]);
})->name('internships');

Route::get('/internships/{course}', function (Course $course) {
    $course->load('comments');
    return view('web.pages.internships-details', compact('course'));
})->name('internships.show');

Route::get('courses/{course}', function (Course $course) {
    return view('web.pages.course-details', compact('course'));
})->name('courses.show');

Route::post('contact', [ContactController::class, 'store'])->name('contact.store');

Route::middleware(['auth:client'])->group(function () {
    Route::get('courses/{course}/apply', [EnrollController::class, 'enrollForm'])->name('courses.showEnrollForm');
    Route::post('courses/{course}/apply', [EnrollController::class, 'enroll'])->name('courses.enroll');

    Route::post('courses/{course}/comment', [CommentController::class, 'comment'])->name('courses.comment');
});

Route::get('/register', [ClientController::class, 'registerForm'])->name('register.form');
Route::post('/register', [ClientController::class, 'register'])->name('register.store');

Route::get('/login', [ClientController::class, 'loginForm'])->name('login.form');
Route::post('/login', [ClientController::class, 'login'])->name('login.store');


Route::post('logout', [ClientController::class, 'logout'])->name('web.logout');
