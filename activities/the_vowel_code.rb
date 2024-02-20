def encode(str)
    vowels = ['a', 'e', 'i', 'o', 'u']
   string_number = ''
    
    str.each_char do |char|
      if vowels.include?(char.downcase)
       string_number += (vowels.index(char.downcase) + 1).to_s
      else
       string_number += char
      end
    end
    
   string_number
  end
  
  puts encode('hello world') 

  def decode (str)
    vowels = ['a', 'e', 'i', 'o', 'u']
   string_number_vowel = ''
    
    str.each_char do |char|
      if ('1'..'5').include?(char)
       string_number_vowel += vowels[char.to_i - 1]
      else
       string_number_vowel += char
      end
    end
    
   string_number_vowel
  end
  
  puts decode ('h2ll4 w5rld')
  