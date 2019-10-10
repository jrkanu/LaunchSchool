# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. You may assume that the 
# argument is a valid integer value.

def odd_absolute_value?(number)
  # number.abs.odd? <-- shorter, but spec forbids using #odd? or #even?
  if number.abs % 2 == 0
    false
  else
    true
  end
end

puts odd_absolute_value?(2)
puts odd_absolute_value?(5)
puts odd_absolute_value?(-17)
puts odd_absolute_value?(-8)
puts odd_absolute_value?(0)
puts odd_absolute_value?(7)