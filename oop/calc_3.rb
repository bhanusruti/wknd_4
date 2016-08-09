# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
fancy_calc = FancyCalculator.new
whiz_calc = WhizBangCalculator.new

puts "hypotenuse"
hypotenuse = whiz_calc.hypotenuse(5,4).to_i
puts hypotenuse

if hypotenuse == 6
  puts "true"
else
  puts "false"
end

puts "Addition"
addition = fancy_calc.add(10,90)
puts addition

if addition == 100
  puts "true"
else
  puts "false"
end

puts "Subtraction"
subtract= fancy_calc.subtract(90,10)
puts subtract

if subtract == 80
  puts "true"
else
  puts "false"
end


puts "Multiplication"
multiply = fancy_calc.multiply(90,10)
puts multiply

if multiply == 900
  puts "true"
else
  puts "false"
end

puts "Division"
divide = fancy_calc.divide(90,10)
puts divide

if divide == 9
  puts "true"
else
  puts "false"
end

puts "Square_Root"
square_root = fancy_calc.square_root(100)
puts square_root

if square_root == 10
  puts "true"
else
  puts "false"
end


