<?php

include "Controller/ModelController.php";

use Controller\ModelController;

$ModelController = new ModelController;

echo $ModelController->getModelById(2);