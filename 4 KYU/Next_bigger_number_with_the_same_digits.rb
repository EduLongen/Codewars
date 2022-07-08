# Create a function that takes a positive integer and returns the next bigger number that can be formed by rearranging its digits. 
# 
# For example:
# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
# nextBigger(num: 12)   // returns 21
# nextBigger(num: 513)  // returns 531
# nextBigger(num: 2017) // returns 2071
# 
# If the digits can't be rearranged to form a bigger number, return -1 (or nil in Swift):
# 
# 9 ==> -1
# 111 ==> -1
# 531 ==> -1
# nextBigger(num: 9)   // returns nil
# nextBigger(num: 111) // returns nil
# nextBigger(num: 531) // returns nil

def next_bigger(n)
  
  nums = n.to_s.chars.map(&:to_i)
  l = nums.length
  
  i = (l - 1).downto(0).find {|i| nums[i-1] < nums[i]}
  
  return -1 if i.nil? || i == 0
  
  x = nums[i-1]
  y = nums[i..-1].rindex {|e| (e > x)}
  
  nums[i - 1], nums[y + i] = nums[y + i], nums[i - 1]
  (nums[0, i] + nums[i..-1].sort).join.to_i
  
end