def is_isogram(text)
    return true if text.length == 0
    unq_text = []

    text.downcase.each_char do |txt|
      unq_text.each do |char|
        return false if txt == char
      end
      unq_text << txt
    end
    true
  end
  
  # Test cases
  p is_isogram("Dermatoglyphics")  #true
  p is_isogram("aba")              #false
  p is_isogram("moOse")            #false
  