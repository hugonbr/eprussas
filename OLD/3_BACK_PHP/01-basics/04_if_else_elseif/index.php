<?php
date_default_timezone_set("America/Sao_Paulo");
$t = date("H");
var_dump($t);
if ($t < "10") {
  echo "Have a good morning!";
} elseif ($t < "20") {
  echo "Have a good day!";
} else {
  echo "Have a good night!";
}
echo "\n";
echo date("F j, Y, g:i a");
echo "\n";
?>