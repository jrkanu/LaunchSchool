# Create a program that greet a user by name, and scream back at user if user
# ends name with exclamation mark.

print "What is your name? "
name = gets.chomp

unless name.end_with?('!')
  puts "Hello, #{name.capitalize}!"
else
  puts "HELLO, #{name.upcase.delete_suffix('!')}! WHY ARE WE SCREAMING?!"
end
