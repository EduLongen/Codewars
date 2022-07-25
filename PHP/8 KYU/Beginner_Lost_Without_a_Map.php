<?php

/*
Given an array of integers, return a new array with each value doubled.

For example:

[1, 2, 3] --> [2, 4, 6]
*/

function maps($x) {
    return array_map(function($y) {
        return $y * 2;
    }, $x);
}
