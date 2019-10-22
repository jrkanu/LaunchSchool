# Write a program that prompts for two positive ints and prints the results of
# variaous operations on those ints.

print "Enter two numbers, separated by spaces:\n>> "
numbers = gets.chomp

numbers = numbers.split.map(&:to_i)
num1 = numbers[0]
num2 = numbers[1]

puts <<~MSG
#{num1} + #{num2} = #{num1 + num2}
#{num1} - #{num2} = #{num1 - num2}
#{num1} * #{num2} = #{num1 * num2}
#{num1} / #{num2} = #{num1 / num2}
#{num1} % #{num2} = #{num1 % num2}
#{num1} ** #{num2} = #{num1**num2}
MSG
