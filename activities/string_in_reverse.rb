def reverse(string)
    text = ""
    arr = string.each_char.to_a
    arr.size.times{text << arr.pop}
    text
  end  

puts reverse('hello')
