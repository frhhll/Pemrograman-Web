<?php

namespace Controller;

include "Controller/AbstractController.php";

class Controller extends AbstractController {
    var $ControllerName;
    var $FunctionName;
    var $HTTPMethod;

    public function getControllerAttribute($function, $method) {
        return [
            "Controller Name" => $this->ControllerName,
            "Function Name" => $function,
            "HTTP Method" => $method
        ];
    }
}