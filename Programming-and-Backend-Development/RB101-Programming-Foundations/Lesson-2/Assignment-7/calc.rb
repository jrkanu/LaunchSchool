# Simple calculator program:
# ask for two numbers
# ask for type of operation
# permorm operation on the two numbers
# output result

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

puts "WELCOME TO CALC"

print "ENTER NUMBER \n>> "
num1 = gets.chomp.to_f

print "ENTER NUMBER \n>> "
num2 = gets.chomp.to_f

print "ENTER [A]DD, [S]UBTRACT, [M]ULTIPLY OR [D]IVIDE \n>> "
operation = gets.chomp.downcase

case operation
when 'a' || 'add'
  result = add(num1, num2)
when 's' || 'subtract'
  result = subtract(num1, num2)
when 'm' || 'multiply'
  result = multiply(num1, num2)
when 'd' || 'divide'
  result = divide(num1, num2)
end

puts "RESULT IS #{result}."
puts "PROGRAM TERMINATING"