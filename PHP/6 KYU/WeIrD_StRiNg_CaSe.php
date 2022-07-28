<?php

/*
Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, 
  and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, 
  therefore that character should be upper cased and you need to start over for each word.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. 
  Words will be separated by a single space(' ').

Examples:
toWeirdCase("String"); // => returns "StRiNg"
toWeirdCase("Weird string case"); // => returns "WeIrD StRiNg CaSe"
*/

function toWeirdCase(string $string): string {
  $weirdCaseWords = [];
  $words = explode(' ', $string);

  foreach ($words as $word) {
      $weirdCaseWord = '';
    
      foreach (str_split($word) as $index => $char) {
          if (($index % 2) === 0) {
              $char = strtoupper($char);
          } else {
              $char = strtolower($char);
          }
          $weirdCaseWord .= $char;
      }
      $weirdCaseWords[] = $weirdCaseWord;
  }
  return implode(' ', $weirdCaseWords);
}

function toWeirdCase($string) {
  $str = str_split(strtolower($string));
  for ($n = 0; $n <= count($str); $n++) {
    if ($str[$n] != " ") {
      $str[$n] = strtoupper($str[$n]);
      $n = $n + 1; 
    }
  }
  return implode("", $str);
}