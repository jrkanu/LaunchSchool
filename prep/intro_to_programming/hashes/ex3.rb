# Using some of Ruby's built-in hash methods, write a program that loops through
# a hash and prints all of the keys. Then write a program that does the same
# thing except printing the values. Finally, write a program that prints both.

hashbrown = { texture: 'crispy', temp: 'hot', shape: 'rectangle' }

# Print the keys
puts "The keys:"
hashbrown.each_key { |k| puts k }

# Print the values
puts "The values:"
hashbrown.each_value { |v| puts v }

# Print both
puts "All together now:"
hashbrown.each { |k, v| puts "key: #{k}, value: #{v}"}
