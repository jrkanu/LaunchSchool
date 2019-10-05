# 1. Use the 'each' method of Array to iterate over [1,2,3,4,5,6,7,8,9,10],
#    and print out each value.

arr = [1,2,3,4,5,6,7,8,9,10]

puts "Ex 1"
arr.each { |x| print x }
print "\n\n"

# 2. Same as above, but only print values greater than 5.

puts "Ex 2"
arr.each { |x| if x > 5 then print x end }
print "\n\n"

# 3. Use the select method to extract all odd numbders into a new array.

puts "Ex 3"
odd_arr = arr.select { |x| x % 3 == 0 }
print odd_arr
print "\n\n"

# 4. Append '11' to the end of the original array. Prepend '0' to the beginning.

puts "Ex 4"
print "Append 11: "
arr.append(11) # Alias for .push()
print arr
print "\nPrepend 0: "
arr.prepend(0) # Alias for .unshift()
print arr
print "\n\n"

# 5. Get rid of 11. And append a 3.

puts "Ex 5"
arr.delete(11)
arr.append(3)
print "Delete 11 and append 3: "
print arr
print "\n\n"

# 6. Get rid of duplicates without specifically removing any one value.

puts "Ex 6"
print "No dupes: "
arr.uniq!
print arr
print "\n\n"

# 7. What's the major difference between an Array and a Hash?

puts "Ex 7"
puts "Array: ordered list accessed and organized by index. Hash: labled list of key-value pairs."
