# Write a program called 'age.rb' that asks a user how old they are and then
# tells them how old they will be in 10, 20, 30 and 40 years.

print "How old are you? "
age = gets.chomp

puts "In 10 years, you will be #{age.to_i + 10}"
puts "In 20 years, you will be #{age.to_i + 20}"
puts "In 30 years, you will be #{age.to_i + 30}"
puts "In 40 years, you will be #{age.to_i + 40}"

# Notes: Initially tried:
#   age = gets.to_i.chomp
# on line 5, but got an error:
#   age.rb:5:in `<main>': undefined method `chomp' for 25:Integer (NoMethodError)
# After seeing solution in book, I see understand that the correct method invokation order is
#   age = gets.chomp.to_i
# because the chomp method can only be called on strings, not integers (which makes sense,
# because chomp removes whitespace, which doesn't exist in integers).
# I ultimately ended up violated DRY principles by calling .to_i 4 times, but I'll leave my
# original solution here for prosterity.
