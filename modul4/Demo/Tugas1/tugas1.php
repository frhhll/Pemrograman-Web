<?php

function generator($n) {
    for ($i = 1; $i <= $n; $i++) {
        $out = "[" . ($i) . "] ";

        if ($i % 3 == 0 && $i % 5 == 0) {
            $out = "HelloWorld";
        } elseif ($i % 3 == 0) {
            $out = "Hello";
        } elseif ($i % 5 == 0) {
            $out = "World";
        }

        echo $out . "\n";
    }
}

generator(45);
?>