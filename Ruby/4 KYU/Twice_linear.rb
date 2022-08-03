=begin

Consider a sequence u where u is defined as follows:

The number u(0) = 1 is the first one in u.
For each x in u, then y = 2 * x + 1 and z = 3 * x + 1 must be in u too.
There are no other numbers in u.
Ex: u = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, ...]

1 gives 3 and 4, then 3 gives 7 and 10, 4 gives 9 and 13, then 7 gives 15 and 22 and so on...

Task:
Given parameter n the function dbl_linear (or dblLinear...) returns the element u(n) of the ordered (with <) sequence u (so, there are no duplicates).

Example:
dbl_linear(10) should return 22

=end

def dbl_linear(n)
  
  count = 1
  numbers = [1]
  
  x_y = 0
  x_z = 0
  
  while count <= n
    numbers[count] = [2 * numbers[x_y] + 1, 3 * numbers[x_z] + 1].min

    x_y += 1 if (numbers[count] == 2 * numbers[x_y] + 1) 
    x_z += 1 if (numbers[count] == 3 * numbers[x_z] + 1)

    count += 1
  end
  
  numbers.last
end

#---------------------------------------------------------------------------------------------------------------------

def dbl_linear(n)
  u=[1]
  (0..n*5).each { |i| u << u[i]*2 + 1 << u[i]*3 + 1}
  u.sort.uniq[n]
end