# Use the 'each_with_index' mothod to iterate through and array of your creation
# that prints each index and value of the array.

best_array = ['ruby', 'chocolate milk', 'flow', 'an actual gorilla']

puts best_array.each_with_index { |val, index| puts "value: #{val}, index: #{index}"}
