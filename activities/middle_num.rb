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