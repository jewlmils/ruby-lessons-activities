# class -> blueprint of the objects
# object -> specific instance of that class/blueprint

# class definition
# this is where we define the properties and behaviors of an object

# properties -> @instance_variables
# behaviors -> instance methods

# when defining a class (of objects), we can ask ourselves
# 1- what does the object know? (properties)
# 2- what can the object do? (behaviors/methods)

class Player
    attr_reader :first_name, :last_name                # principle of least exposure
    # attr_writer :first_name, :last_name, :rating
    attr_accessor :rating                              # defines both reader and writer methods
                                                       # metaprogramming -> code that writes code

    def initialize(first_name, last_name, rating=0)
        @first_name = first_name
        @last_name = last_name
        @rating = rating
    end

    def dribble                                        # instance method
        puts "Dribbling..."
    end
end

kobe = Player.new('Kobe', 'Bryant', 85)

puts kobe.first_name
puts kobe.rating
kobe.rating = 70                                      # syntactic sugar for kobe.rating=(70)
puts kobe.rating