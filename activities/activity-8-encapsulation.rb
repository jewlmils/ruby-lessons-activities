class Person
    attr_accessor :name, :age
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def display_info
      "Name: #{@name}, Age: #{@age}"
    end
  end
  
  person = Person.new("Lucci", 30)
  
  puts person.name  
  puts person.age   
  puts person.name = "Luna"
  puts person.age = 29
  
  