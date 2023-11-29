<?php

    namespace app\Controller;

    // include '/Semester-5/Pemrograman-Web/Praktikum/modul5/CodeLab/app/Traits/ApiResponseFormatter.php';
    include 'Traits/ApiResponseFormatter.php';
    // include '/Semester-5/Pemrograman-Web/Praktikum/modul5/CodeLab/app/Models/Product.php';
    include 'Models/Product.php';

use app\Models\Product;
use app\Traits\ApiResponseFormatter;

class ProductController
{
  // use trait
  use ApiResponseFormatter;

  public function index()
  {
    // define object model
    $productModel = new Product();
    // call all get function product
    $response = $productModel->findAll();
    // return value
    return $this->apiResponse(200, "success", $response);
  }

  public function getById($id)
  {
    $productModel = new Product();
    $response = $productModel->findById($id);
    return $this->apiResponse(200, "success", $response);
  }

  public function insert()
  {
    $jsonInput = file_get_contents('php://input');
    $inputData = json_decode($jsonInput, true);
    if (json_last_error()) {
      return $this->apiResponse(400, "error invalid input", null);
    }

    $productModel = new Product();
    $response = $productModel->create([
      "product_name" => $inputData['product_name']
    ]);

    return $this->apiResponse(200, "success", $response);
  }

  public function update($id)
  {
    $jsonInput = file_get_contents('php://input');
    $inputData = json_decode($jsonInput, true);

    if (json_last_error()) {
      return $this->apiResponse(400, "error invalid input", null);
    }

    $productModel = new Product();
    $response = $productModel->update([
      "product_name" => $inputData['product_name']
    ], $id);

    return $this->apiResponse(200, "success", $response);
  }

  public function delete($id)
  {
    $productModel = new Product();
    $response = $productModel->destroy($id);

    return $this->apiResponse(200, "success", $response);
  }
}