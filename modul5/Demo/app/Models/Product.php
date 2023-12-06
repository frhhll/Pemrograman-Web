<?php

namespace app\Models;

include "Config/DatabaseConfig.php";

use app\Config\DatabaseConfig;
use mysqli;

class Product extends DatabaseConfig {
    public $conn;

    public function __construct() {
        // Connect ke database mysql
        $this->conn = new mysqli($this->host, $this->user, $this->password, $this->database_name, $this->port);
        // Check connection
        if ($this->conn->connect_error) {
            die("Connection failed: " . $this->conn->connect_error);
        }
    }

    // Proses menampilkan semua data
    public function findAll() {
        $sql = "SELECT products.id_product, products.name, products.engine, built.built_id AS built, types.type_id AS type, products.transmission, products.sell_price, products.stock FROM `products`
        JOIN built ON built.built_id = products.built_id
        JOIN types ON types.type_id = products.type_id";
        $result = $this->conn->query($sql);
        $this->conn->close();
        $data = [];
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }

        return $data;
    }

    // Proses menampilkan data dengan id
    public function findById($id) {
        $sql = "SELECT products.name, products.engine, built.built_id AS built, types.type_id AS type, products.transmission, products.sell_price, products.stock FROM `products`
        JOIN built ON built.built_id = products.built_id
        JOIN types ON types.type_id = products.type_id
        WHERE products.id_product = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        $this->conn->close();
        $data = [];
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }

        return $data;
    }

    // Proses insert data
    public function create($data) {
        $name = $data["name"];
        $engine = $data["engine"];
        $transmission = $data["transmission"];
        $sell_price = $data["sell_price"];
        $stock = $data["stock"];
        $built_id = $data["built_id"];
        $type_id = $data["type_id"];
        
        $query = "INSERT INTO `products` (`name`, `engine`, `transmission`, `sell_price`, `stock`, `built_id`, `type_id`) VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("sssiiii", $name, $engine, $transmission, $sell_price, $stock,  $built_id, $type_id);
        $stmt->execute();
        $this->conn->close();
    }

    // Proses update data dengan id
    public function update($data, $id_product) {
        $name = $data["name"];
        $engine = $data["engine"];
        $transmission = $data["transmission"];
        $sell_price = $data["sell_price"];
        $stock = $data["stock"];
        $built_id = $data["built_id"];
        $type_id = $data["type_id"];
        
        $query = "UPDATE `products` SET `name`=?, `engine`=?, `transmission`=?, `sell_price`=?, `stock`=?, `built_id`=?, `type_id`=? WHERE `id_product`=?";
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("sssiiiii", $name, $engine, $transmission, $sell_price, $stock, $built_id, $type_id, $id_product);
        $stmt->execute();
        $this->conn->close();
    }

    // Proses delete data dengan id
    public function destroy($id) {
        $query = "DELETE FROM products WHERE id_product = ?";
        $stmt = $this->conn->prepare($query);
        // Huruf "i" berarti parameter pertama adalah integer
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $this->conn->close();
    }
}