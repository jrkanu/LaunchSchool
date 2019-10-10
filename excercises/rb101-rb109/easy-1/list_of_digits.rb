# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.

def digit_list(number)
  # 1. Convert number to string
  # 2. Split into chars
  # 3. Convert each char back to int
  # 4. Return new array
  number.to_s.split('').map { |s| s.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true