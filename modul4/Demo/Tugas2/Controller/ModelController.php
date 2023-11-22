<?php

namespace Controller;

include "Controller/Controller.php";
include "Models/Model.php";
include "Traits/ResponseFormatter.php";

use Models\Model;
use Traits\ResponseFormatter;

class ModelController extends Controller {
    use ResponseFormatter;

    public function __construct() {
        $this->ControllerName = "ModelController";
    }

    public function GetAllModel() {
        $Model = new Model;
        $car = $Model->carList();
        $response = [
            "controller_attribute" => $this->getControllerAttribute("GetAllModel", "GET"),
            "data" => $car
        ];

        return $this->responseFormatter(200, "Success", $response);
    }

    public function getModelById($index) {
        $Model = new Model;
        $car = $Model->carList();
        $response = [
            "controller_attribute" => $this->getControllerAttribute("getModelById", "GET"),
            "data" => null
        ];
        if ($index < count($car)) {
            $response["data"] = $car[$index - 1];
            return $this->responseFormatter(200, "Success", $response);
        } else {
            return $this->responseFormatter(400, "Bad Request", $response);
        }
    }

    public function __toString() {
        return $this->GetAllModel();
    }
}