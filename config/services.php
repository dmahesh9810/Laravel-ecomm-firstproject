<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'facebook' => [
        'client_id' => "193257728943115",
        'client_secret' => "9eb252d4f192c1454ca619fd722b117c",
        'redirect' => 'http://localhost:8000/fbres',
    ],

    'google' => [
        'client_id' => "157429634422-39ggpmpcdg3c1epvm3r862eif14lr485.apps.googleusercontent.com",
        'client_secret' => "MYNpsSc6QdpcCdtpoSiCCAOH",
        'redirect' => 'http://localhost:8000/googleres',
    ],

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

];
