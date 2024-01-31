# Abstract class representing a calculator
class Calculator
    def initialize(num_one, num_two)
      @num_one = num_one
      @num_two = num_two
    end
  end
  
  class Addition < Calculator
    def calculate
      @num_one + @num_two
    end
  end
  
  class Subtraction < Calculator
    def calculate
      @num_one - @num_two
    end
  end
  
    private
  
    def Answer(result)
      puts "The answer is: #{result}"
    end
  
  addition = Addition.new(5, 3)
  subtraction = Subtraction.new(8, 2)
  puts "Addition Result: #{addition.calculate}"      
  puts "Subtraction Result: #{subtraction.calculate}"  
  