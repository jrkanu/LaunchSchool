# Write a program that solicits 6 numbers from the user, then prints a message
# that describeds whether or not the 6th number appears amongst the first 5
# numbers.

print "Enter five numbers, plus a sixth number your'd like to check.\n>> "
numbers_string = gets.chomp

# Convert string input to array of numbers.
numbers_array = numbers_string.split.map(&:to_i)

first_five_numbers = numbers_array[0, 5]
sixth_number = numbers_array[5]

if first_five_numbers.include?(sixth_number)
  puts "The number #{sixth_number} appears in #{first_five_numbers}."
else
  puts "The number #{sixth_number} does not appear in #{first_five_numbers}."
end
