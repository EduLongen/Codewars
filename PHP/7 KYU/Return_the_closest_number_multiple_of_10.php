<?php

/*
Given a number return the closest number to it that is divisible by 10.

Example input:
22
25
37

Expected output:
20
30
40
*/

function closest_multiple_10($n) {
    return round($n, -1);
}