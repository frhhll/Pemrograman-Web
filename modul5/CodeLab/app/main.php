<?php

header("Content-Type: application/json; charset=UTF-8");

// include '/Semester-5/Pemrograman-Web/Praktikum/modul5/CodeLab/app/Routes/ProductRoutes.php';
include 'Routes/ProductRoutes.php';

use app\Routes\ProductRoutes;

// get request method
$method = $_SERVER['REQUEST_METHOD'];
// get request path
$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// call routes
$productRoute = new ProductRoutes();
$productRoute->handle($method, $path);

// php -S localhost:8000 main.php