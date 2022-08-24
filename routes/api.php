<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//teachers

Route::group(['prefix' => 'teacher'], function () {

    Route::group(['prefix' => 'auth'], function () {

        Route::post('login', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'login']);
        Route::post('register', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'register']);

        Route::post('sendVerficationCode', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'forgetPassword']);
        Route::post('verifyCode', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'verifyCode']);
    }); //end of auth teacher


    Route::group(['middleware' => 'api_authenticate'], function () {

        Route::post('auth/resetPassword', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'resetPassword']);
        Route::post('auth/changePassword', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'changePassword']);


        Route::post('edit_profile', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'editProfile']);
        Route::post('edit_educational_data', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'editEducationalData']);

        Route::get('profile', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'teacherProfile']);
        Route::get('wallet', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'wallet']);
        Route::post('update_fcm_token', [\App\Http\Controllers\Api\Auth\TeacherController::class, 'updateFcmToken']);

        Route::get('subjects/{level}', [\App\Http\Controllers\Api\Teacher\SubjectController::class, 'index']);
        Route::get('getSubjectsByLevels', [\App\Http\Controllers\Api\Teacher\SubjectController::class, 'getSubjectsByLevels']);


        Route::apiResource('lessons', \App\Http\Controllers\Api\Teacher\LessonController::class);
        Route::apiResource('groups', \App\Http\Controllers\Api\Teacher\GroupController::class);
        Route::get('subscriptions', [\App\Http\Controllers\Api\Teacher\SubscriptionController::class, 'mySubscriptions']);
    }); //end of auth teacher



}); //end of teachers api's

Route::group(['middleware' => 'api_authenticate'], function () {
    Route::post('logout', [\App\Http\Controllers\Api\Auth\LogoutController::class, 'logout']);
    Route::get('notifications', [\App\Http\Controllers\Api\NotificationController::class, 'index']);
});

Route::group(['prefix' => 'levels'], function () {

    Route::get('', [\App\Http\Controllers\Api\LevelController::class, 'index']);
}); //end of levels

Route::group(['prefix' => 'subjects'], function () {

    Route::get('', [\App\Http\Controllers\Api\SubjectController::class, 'index']);
}); //end of levels

Route::get('terms', [\App\Http\Controllers\Api\GeneralController::class, 'terms']);
Route::post('contact', [\App\Http\Controllers\Api\GeneralController::class, 'contact']);

Route::get('banks', [\App\Http\Controllers\Api\Student\ChargeController::class, 'banks']);

Route::group(['middleware' => 'api_authenticate'], function () {
    Route::group(['prefix' => 'chat'], function () {
        Route::post('sendMessage', [\App\Http\Controllers\Api\MessageController::class, 'sendMessage']);
        Route::get('contacts', [\App\Http\Controllers\Api\MessageController::class, 'allChatContacts']);
        Route::get('messages', [\App\Http\Controllers\Api\MessageController::class, 'getMessages']);
    });

    Route::get('getLessonAgoraToken/{lesson}', [\App\Http\Controllers\Api\AgoraController::class, 'generateToken']);
});

Route::group(['prefix' => 'student'], function () {

    Route::group(['prefix' => 'auth'], function () {

        Route::post('login', [\App\Http\Controllers\Api\Auth\StudentController::class, 'login']);
        Route::post('register', [\App\Http\Controllers\Api\Auth\StudentController::class, 'register']);
        Route::post('sendVerficationCode', [\App\Http\Controllers\Api\Auth\StudentController::class, 'forgetPassword']);
        Route::post('verifyCode', [\App\Http\Controllers\Api\Auth\StudentController::class, 'verifyCode']);
    }); //end of auth student

    Route::group(['middleware' => 'api_authenticate'], function () {
        Route::post('auth/resetPassword', [\App\Http\Controllers\Api\Auth\StudentController::class, 'resetPassword']);
        Route::post('auth/changePassword', [\App\Http\Controllers\Api\Auth\StudentController::class, 'changePassword']);

        Route::post('edit_profile', [\App\Http\Controllers\Api\Auth\StudentController::class, 'editProfile']);
        Route::get('profile', [\App\Http\Controllers\Api\Auth\StudentController::class, 'studentProfile']);

        Route::post('update_fcm_token', [\App\Http\Controllers\Api\Auth\StudentController::class, 'updateFcmToken']);


        Route::get('home', [\App\Http\Controllers\Api\Student\HomeController::class, 'index']);
        Route::get('teachers', [\App\Http\Controllers\Api\Student\HomeController::class, 'teachers']);
        Route::get('teachers/{teacher}/subjects/{subject}/groups', [\App\Http\Controllers\Api\Student\HomeController::class, 'teacherGroups']);

        Route::get('teachers/{teacher}/subjects/{subject}/lessons', [\App\Http\Controllers\Api\Student\HomeController::class, 'teacherLessons']);

        Route::post('teachers/{teacher}/rate', [\App\Http\Controllers\Api\Student\RateController::class, 'rate']);
        Route::post('teachers/{teacher}/addToFavorite', [\App\Http\Controllers\Api\Student\FavoriteController::class, 'addToFavorite']);
        Route::get('favorites', [\App\Http\Controllers\Api\Student\FavoriteController::class, 'favorite']);

        Route::post('subscriptions/groups/{group}', [\App\Http\Controllers\Api\Student\SubscriptionController::class, 'subscribeToGroup']);
        Route::post('subscriptions/lessons/{lesson}', [\App\Http\Controllers\Api\Student\SubscriptionController::class, 'subscribeToLesson']);
        Route::get('subscriptions', [\App\Http\Controllers\Api\Student\SubscriptionController::class, 'mySubscriptions']);


        Route::post('wallet/chargeWallet', [\App\Http\Controllers\Api\Student\ChargeController::class, 'charge']);
        Route::get('wallet/charges', [\App\Http\Controllers\Api\Student\ChargeController::class, 'charges']);
    }); //end of auth student

});
