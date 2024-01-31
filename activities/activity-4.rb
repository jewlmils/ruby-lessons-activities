require 'rspec'

class Profile
  attr_accessor :full_name, :age, :address, :work

  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

#missing code is to test yung code is:
#nag create ng getters and setters para sa attributes
#initialize ng objects with values for full name, age, address and work.
#and to test the code,
#new object with initial values
#then initial values using getters
#ang modify ng value using setter


describe 'Profile' do
  it 'has getters and setters' do
    # Create a new Profile object with initial values
    my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

    expect(my_profile.full_name).to eq('Juan')
    my_profile.full_name = 'Juan Cruz'

    expect(my_profile.full_name).to eq('Juan Cruz')

    my_profile.age = 25
    my_profile.work = 'Software Engineer'

    expect(my_profile.age).to eq(25)
    expect(my_profile.work).to eq('Software Engineer')
  end
end


# Create your own object with attributes and methods.
class Person
  attr_accessor :name, :age, :location

  def initialize(name, age, location)
    @name = name
    @age = age
    @location = location
  end

  def introduce
    "Hi, I'm #{@name}. I'm #{@age} year old and live in #{@location}."
  end
end

person = Person.new('Luna', 1, 'SJDM')
puts person.introduce

#gumawa lang ako ng Person class with attributes value na name, age and location
#and then initialize ng objects with values same name sa attributes
#and then nag define ng introduce method

#and then to test the code. gumawa lang ako ng new Person object with values of name, age, and location
#then tinawag ko si introduce method.
