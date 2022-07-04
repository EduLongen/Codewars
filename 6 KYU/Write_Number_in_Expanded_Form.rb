# You will be given a number and you will need to return it as a string in Expanded Form. For example:
# 
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
# NOTE: All numbers will be whole numbers greater than 0.

def expanded_form(num)
  str = num.to_s
  z = str.size - 1
  str.chars.map.with_index{ |n,i| n + ?0 * (z-i) if n > ?0 }.compact.join" + " 
end