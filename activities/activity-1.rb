# q1
num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
num.each do |ar|
  puts ar
end

# q2
h = { a: 1, b: 2, c: 3, d: 4 }
value = h[:b]
puts value
h[:e] = 5
puts h

# q3
contact_data = [
  ['john@email.com', '123 Main st.', '555-123-4567'],
  ['avion@email.com', '404 Not Found Dr.', '123-234-3456']
]
contacts = { "John Cruz": {}, "Avion School": {} }

contacts.each_with_index do |(name, _data), index|
  contacts[name] = {
    email: contact_data[index][0],
    address: contact_data[index][1],
    phone: contact_data[index][2]
  }
end

puts contacts

# q4
print 'How old are you?'
age = gets.chomp.to_i
res = age + 10
puts "In 10 years you will be #{res} years old"
res1 = age + 20
puts "In 20 years you will be #{res1} years old"
res2 = age + 30
puts "In 30 years you will be #{res2} years old"
res3 = age + 40
puts "In 40 years you will be #{res3} years old"

# q5
arr = [1, 3, 5, 7, 9, 11]
print 'number:'
check = gets.chomp.to_i

if arr.include?(check)
  puts 'true'
else
  puts 'false'
end

# q6
print 'Enter a number between 0-100:'
number = gets.chomp.to_i

if number.between?(0, 50)
  puts 'between 0-50'
elsif number.between?(50, 100)
  puts 'between 50-100'
else
  puts 'above 100'
end

# q7
input = ''
while input != 'stop'
  print 'Enter something (type "stop" to end):'
  input = gets.chomp
  puts "You entered: #{input}"
end

puts 'End'

# q8
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
div = arr.select { |num| num.even? } #num % 2 == 0

puts "array: #{arr}"
puts "divisible by 2: #{div}"
