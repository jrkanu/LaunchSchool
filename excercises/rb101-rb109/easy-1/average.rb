# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array.
#
# Pseudocode:
#
# Given an array of integers arr,
#
# Add all integers together
# - SET sum = 0
# - INTERATE through array
# -- Increment sum by array value
# - RETURN sum / arr.size

def average(array)
  sum = 0.0         # Initialize as float to avoid integer division

  for int in array  # Sum all numbers in array
    sum += int
  end

  sum / array.size  # Divide by number of numbers
end

puts average([1, 5, 87, 45, 8, 8]) == 25      # These tests fail due to int division,
puts average([9, 47, 23, 95, 16, 52]) == 40   # but alg works as expected.
