require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do 
  describe '#add' do 
    it 'should return the sum of two numbers' do 
      calculator = Calculator.new
      expect(calculator.add(1,2)).to eq(3)
    end
  end

  describe '#subtract' do 
    it 'should return the difference of two numbers' do 
      calculator = Calculator.new
      expect(calculator.subtract(2,1)).to eq(1)
    end
  end

  describe '#multiply' do 
    it 'should return the multiplication of two numbers' do 
      calculator = Calculator.new
      expect(calculator.multiply(2,1)).to eq(2)
    end
  end

  describe '#divide' do 
    it 'should return the quotient of two numbers' do 
      calculator = Calculator.new
      expect(calculator.divide(6,3)).to eq(2)
    end
  end

  describe '#square' do 
    it 'should return the square of the number' do 
      calculator = Calculator.new
      expect(calculator.square(4)).to eq(16)
    end
  end

  describe '#power' do 
    it 'should return the power of two numbers' do 
      calculator = Calculator.new
      expect(calculator.power(2,2)).to eq(4)
    end
  end
end


calculator = Calculator.new 
 puts "Testing the add method"
 if calculator.add(1,2) == 3
   puts "Test passed"
 else
   puts "Test failed"
 end

 calculator = Calculator.new 
 puts "Testing the subtract method"
 if calculator.subtract(2,1) == 1
   puts "Test passed"
 else
   puts "Test failed"
 end

 calculator = Calculator.new 
 puts "Testing the multiply method"
 if calculator.multiply(2,1) == 2
   puts "Test passed"
 else
   puts "Test failed"
 end

 calculator = Calculator.new 
 puts "Testing the divide method"
 if calculator.divide(6,3) == 2
   puts "Test passed"
 else
   puts "Test failed"
 end

 calculator = Calculator.new 
 puts "Testing the square method"
 if calculator.square(4) == 16
   puts "Test passed"
 else
   puts "Test failed"
 end

 calculator = Calculator.new 
 puts "Testing the power method"
 if calculator.power(2,2) == 4
   puts "Test passed"
 else
   puts "Test failed"
 end


  
