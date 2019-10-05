# Write a program that takes a number from the user between 0 and 100 and reports
# back whether the number is between 0 and 50, 51 and 100, or above 100.

print "NEED INPUT: "
num = gets.chomp.to_i

if num >= 0 && num <= 50
  puts "BETWEEN 0 AND 50"
elsif num >= 51 && num <= 100
  puts "BETWEEN 51 AND 100"
elsif num > 100
  puts "OVERLOADED!!"
else
  puts "???"
end
