<?php

/*
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example (Input --> Output):

39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
4 --> 0 (because 4 is already a one-digit number)
*/

function persistence(string $num){
  $mc = 0;
  while( strlen($num) > 1 ){
    for( $i=0; $i < strlen($num); $i += 1 )
      $i == 0 ? $res = $num[0] : $res *= $num[$i];
    $mc += 1;
    $num = (string) $res;
  } 
  return $mc;
}

function persistence(int $num): int {
  $count = 0;
  while ($num > 9) {
    $num = array_product(str_split($num));
    $count++;
  }
  return $count;
}