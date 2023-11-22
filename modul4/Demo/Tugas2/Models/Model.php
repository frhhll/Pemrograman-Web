<?php

namespace Models;

class Model {
    public function carList() {
        $car = [
            ["name" => "Mercedes-Maybach S 580 4MATIC+", "price" => 7000000000],
            ["name" => "Mercedes-Maybach GLS 600 4MATIC+", "price" => 7200000000],
            ["name" => "Mercedes-AMG G 63", "price" => 6580000000],
            ["name" => "Mercedes-AMG GLS 63", "price" => 4790000000],
            ["name" => "EQS 450 4MATIC SUV", "price" => 3590000000]
        ];

        return $car;
    }
}