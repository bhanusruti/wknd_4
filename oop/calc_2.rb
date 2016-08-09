# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalci

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

class FancyCalculator
  include SimpleCalci
  
  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
fancy_calc = FancyCalculator.new

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

