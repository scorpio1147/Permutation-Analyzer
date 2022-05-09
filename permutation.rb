# Program that allows for input of permutation and provides information about the permutation.

puts ''
puts 'Please enter the permutation (without duplicates).'

input_array = Array.new()
cycles_array = Array.new()
cycles_array.push(Array.new())

string_array = gets.split(" ")
string_array.each {|i| input_array.push(i.to_i)}
visited_array = Array.new(input_array.length(), false)

puts ''

current_index = 0
permutation_count = 1

while !visited_array.all? {|i| i == true}

  while (visited_array[current_index] == false)
    cycles_array[permutation_count-1].push(current_index)
    visited_array[current_index] = true
    current_index = input_array[current_index]
  end

  permutation_count += 1
  cycles_array.push(Array.new())

  for i in 0..visited_array.length()-1
    if visited_array[i] == false
      current_index = i
      break
    end
  end
end

cycles_array.pop()

puts 'The disjoint cycle decomposition of this permutation is: '

for i in 0..cycles_array.length()-1
  print '('
  for j in 0..cycles_array[i].length()-2
    print (cycles_array[i])[j]
    print ' '
  end
  print (cycles_array[i])[cycles_array[i].length()-1]
  print ') '
end

parity_helper = 1
party = ''

puts ''

length_array = Array.new()

cycles_array.each do |i|
  if i.length() > 1
    parity_helper *= (i.length()-1)
  end
  length_array.push(i.length())
end

if parity_helper % 2 == 0
  parity = 'even'
else
  parity = 'odd'
end

order = length_array.reduce(1) { |acc, n| acc.lcm(n) }

puts "This is an #{parity} permutation in S_#{input_array.length()}. It has order #{order}."

puts ''


