<?php

namespace Controller;

include 'Traits/ResponseFormatter.php';
include 'Controller/Controller.php'; // Sesuaikan dengan nama file dan path yang benar

use Traits\ResponseFormatter;

// DISIMULASIKAN INI ADALAH CLASS CONTROLLER PRODUCT
class ProductController extends Controller
{
    // gunakan trait yang sudah dibuat
    use ResponseFormatter;

    // MAGIC METHOD, Method ini akan diakses pada saat pembuatan object.
    public function __construct()
    {

        // SET ATTRIBUT controllerName PADA PARENT CLASS CONTROLLER
        $this->controllerName = "Get All Product";
        // SET ATTRIBUT controllerMethod PADA PARENT CLASS CONTROLLER
        $this->controllerMethod = "GET";
    }

    // DISIMULASIKAN INI METHOD UNTUK GET DATA PRODUCT
    public function getAllProduct()
    {
        // ARRAY DUMMY DATA
        $dummyData = [
            "Air Mineral",
            "Kebab",
            "Spaghetti",
            "Jus Jambu"
        ];

        $response = [
            "controller_attribute" => $this->getControllerAttribute(), // ambil method getControllerAttributes dari parent class
            "product" => $dummyData
        ];

        // gunakan method dari trait yang sudah dibuat
        return $this->responseFormatter(200, "Success", $response);
    }
}