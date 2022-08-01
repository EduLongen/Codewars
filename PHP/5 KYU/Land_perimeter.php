<?php

/*
Given an array arr of strings complete the function landPerimeter by calculating the total perimeter of all the islands. 
  Each piece of land will be marked with 'X' while the water fields are represented as 'O'. 
  Consider each tile being a perfect 1 x 1piece of land. Some examples for better visualization:

['XOOXO',

  'XOOXO',

  'OOOXO',

  'XXOXO',

  'OXOOO'] 

should return: "Total land perimeter: 24",

while

['XOOO',

  'XOXO',

  'XOXO',

  'OOXX',

  'OOOO']

should return: "Total land perimeter: 18"
*/

function land_perimeter($arr) {
  for ($i = 0; $i < count($arr); $i++) { 
      for ($j = 0; $j < strlen($arr[$i]); $j++) { 
          if ($arr[$i][$j] == 'X') {
              $res += 4;
              $arr[$i][$j+1] != 'X' ?: $res--;
              $arr[$i][$j-1] != 'X' ?: $res--;
              $arr[$i+1][$j] != 'X' ?: $res--;
              $arr[$i-1][$j] != 'X' ?: $res--;
          }
      }
  }
  return 'Total land perimeter: '.$res;
}