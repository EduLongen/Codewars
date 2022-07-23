<?php

# Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

function boolToWord($bool){
  if ($bool === True) {
    return "Yes";
  }
  else return "No";
}

function boolToWord2($bool){
  return $bool ? "Yes" : "No" ;
}