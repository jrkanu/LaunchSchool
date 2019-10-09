# Write a program that interates over an array and builds a new array that is
# the result of incrementing each value in the array by a value of 2.
# Print the original array and the modified arrray using p.

arr = [4,9,41,2,6]
arr2 = []

p arr.each { |x| arr2.push(x + 2) }
p arr2
