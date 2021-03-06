# Implement a change function that performs at O(n) (we will test for this).
# 
# The function will accept an integer parameter that represents cents, and returns the optimal change using the least number of coins.
# 
# The function should return a hash containing a key for each coin of US currency (specifically 25¢ 10¢ 5¢ and 1¢ coins -- don't use 50¢ or 100¢ coins). 
#   The value of each coin should represent the count of each coin in the change.
# 
# The function should return a hash with all coin count values set to 0 if the cents parameter is less than or equal to 0.
# 
# change(31)
# => { 25 => 1, 10 => 0, 5 => 1, 1 => 1 } 

def change(cents)
  return { 25 => 0, 10 => 0, 5 => 0, 1 => 0 } if cents <= 0
  change = {}
  change[25] = (cents/25)
  cents = cents % 25
  change[10] = (cents/10)
  cents = cents % 10
  change[5] = (cents/5)
  cents = cents % 5
  change[1] = (cents/1)
  cents = cents % 1
  change
end