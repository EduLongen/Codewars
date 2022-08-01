=begin

The goal is to implement simple calculator which uses fluent syntax:

Calc.new.one.plus.two             # Should return 3
Calc.new.five.minus.six           # Should return -1
Calc.new.seven.times.two          # Should return 14
Calc.new.nine.divided_by.three     # Should return 3

There are only four operations that are supported (plus, minus, times, divided_by) and 10 digits (zero, one, two, three, four, five, six, seven, eight, nine).

Each calculation consists of one operation only.

=end

class Fixnum
  def plus;       Calc.new("+", self) end
  def minus;      Calc.new("-", self) end
  def times;      Calc.new("*", self) end
  def divided_by; Calc.new("/", self) end
end

class Calc
  def initialize(*arguments)
    if arguments.length == 2
      @operation = arguments[0]
      @number    = arguments[1]
    end
  end
  
  %w(zero one two three four five six seven eight nine).each_with_index do |w,i|
    define_method(w) { perform i }
  end
  
  def perform number
    if @operation
      @number.send(@operation, number)
    else
      number
    end
  end
end