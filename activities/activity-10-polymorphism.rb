#INHERITANCE
# Abstract class representing a bird
class Bird
    def sound
      "Tweet tweet"
    end
  end
  
  class Penguin < Bird
    def sound
      "Honk honk"
    end
  end

  class Sparrow < Bird
    def sound
      "Chirp chirp"
    end
  end
  
  penguin = Penguin.new
  sparrow = Sparrow.new
  
  puts "Penguin Sound: #{penguin.sound}" 
  puts "Sparrow Sound: #{sparrow.sound}"


#DUCK-TYPING
def sound(vehicle)
    puts "Sound: #{bird.make_sound}"
  end

  class Car
    def vroom
      "beep beep"
    end
  end

  class Train
    def vroom
      "chug chug"
    end
  end

 car = Car.new
 train = Train.new
  
 sound(car)
 sound(train) 
  
  