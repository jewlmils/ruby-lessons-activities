#You need to create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.
# when given three number, the code will find the middle number and return it's index.

def middle_num(arr)
  a, b, c = arr
  if (b >= a && b <= c) || (b <= a && b >= c)
    return 1
  elsif (a >= b && a <= c) || (a <= b && a >= c)
    return 0
  else
    return 2
  end
end

puts middle_num([1, 2, 9])