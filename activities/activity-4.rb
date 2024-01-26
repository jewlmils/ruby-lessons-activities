require 'rspec'
# 1
class Profile
  attr_accessor :full_name, :age, :address, :work

  def initialize(full_name, age, address, work)
    @full_name = full_name
    @age = age
    @address = address
    @work = work
  end
end

describe 'Profile' do
  it 'has getters and setters' do
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