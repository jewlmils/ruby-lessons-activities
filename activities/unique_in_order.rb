def unq_in_order(element)
    return [] if element.empty?
    element = element.chars if element.is_a?(String)
    unq_list = [element[0]]
    
    (1...element.length).each do |i|
      if element[i] != element[i - 1]
        unq_list << element[i]
      end
    end
  
    return unq_list
  end
  
puts unq_in_order("AAAABBBCCDAABBB") 
puts unq_in_order([1, 2, 2, 3, 3])    
