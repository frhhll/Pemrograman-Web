<?php

namespace app\Controller;

include "Traits/ApiResponseFormatter.php";
include "Models/Product.php";

use app\Models\Product;
use app\Traits\ApiResponseFormatter;

class ProductController {
    use ApiResponseFormatter;

    public function index() {
        // Definisikan object model product yang sudah dibuat
        $productModel = new Product();
        // Panggil fungsi get all product
        $response = $productModel->findAll();
        // Return $response dengan melakukan formatting terlebih dahulu menggunakan trait yang sudah dipanggil
        return $this->apiResponse(200, "success", $response);
    }

    public function getById($id) {
        $productModel = new Product();
        $response = $productModel->findById($id);
        return $this->apiResponse(200, "success", $response);
    }

    public function insert() {
        // Tangkap input JSON
        $jsonInput = file_get_contents('php://input');
        $inputData = json_decode($jsonInput, true);
        // Validasi apakah input valid
        if (json_last_error()) {
            return $this->apiResponse(400, "error invalid input", null);
        }

        // Lanjut jika tidak error
        $productModel = new Product();
        $response = $productModel->create([
            "name" => $inputData["name"],
            "engine" => $inputData["engine"],
            "transmission" => $inputData["transmission"],
            "sell_price" => $inputData["sell_price"],
            "stock" => $inputData["stock"],
            "built_id" => $inputData["built_id"],
            "type_id" => $inputData["type_id"]
            
        ]);

        return $this->apiResponse(200, "success", $response);
    }

    public function update($id_product) {
        // Tangkap input JSON
        $jsonInput = file_get_contents("php://input");
        $inputData = json_decode($jsonInput, true);
        // Validasi apakah input valid
        if (json_last_error()) {
            return $this->apiResponse(400, "error invalid input", null);
        }

        // Lanjut jika tidak error
        $productModel = new Product();
        $response = $productModel->update([
            "name" => $inputData["name"],
            "engine" => $inputData["engine"],
            "transmission" => $inputData["transmission"],
            "sell_price" => $inputData["sell_price"],
            "stock" => $inputData["stock"],
            "built_id" => $inputData["built_id"],
            "type_id" => $inputData["type_id"]
        ], $id_product);

        return $this->apiResponse(200, "success", $response);
    }

    public function delete($id) {
        $productModel = new Product();
        $response = $productModel->destroy($id);

        return $this->apiResponse(200, "success", $response);
    }
}