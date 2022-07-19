# Create a RomanNumerals class that can convert a roman numeral to and from an integer value. It should follow the API demonstrated in the examples below. 
#   Multiple roman numeral values will be tested for each helper method.
# 
# Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. 
#   In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.
# 
# Input range : 1 <= n < 4000
# 
# In this kata 4 should be represented as IV, NOT as IIII (the "watchmaker's four").
# 
# Examples
# RomanNumerals.to_roman(1000) # should return 'M'
# RomanNumerals.from_roman('M') # should return 1000
# 
#   Symbol  Value
#     I	      1
#     IV	    4
#     V	      5
#     X	      10
#     L	      50
#     C	      100
#     D	      500
#     M	      1000

class RomanNumerals
  
  FROM_ROMAN = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'C' => 100, 'CD' => 400, 'XC' => 90, 
    'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1 }
  
  TO_ROMAN = FROM_ROMAN.invert
  
  def self.to_roman num
    result = ''
    while num > 0
      map = TO_ROMAN.detect { |k,v| k <= num }
      num -= map.first
      result += map.last
    end
    result
  end
  
  def self.from_roman str
    result = 0
    while str.length > 0
      map = FROM_ROMAN.detect { |k,v| str.gsub! /^#{k}/, '' }
      result += map.last
    end
    result
  end
  
end