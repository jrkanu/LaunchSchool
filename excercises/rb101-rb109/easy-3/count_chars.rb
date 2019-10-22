# Write a program that will prompt for a string, and then count the number of
# characters in that string, excluding spaces.

print "Enter some words:\n>> "
string = gets.chomp

char_count = 0

string.chars.each do |char|
  char_count += 1 unless char == ' '
end

puts "There are #{char_count} characters in \"#{string}\"."
