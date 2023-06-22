<?php
function teste($x) {
    static $y = 0;
    if ($x > 0) {
        $y += $x;
        teste(--$x);
    }
    return $y;
}
echo teste(5);
?>

