# Example of recursion applied to the fibonacci sequence.

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

print "Enter number: "
seed = gets.chomp.to_i

puts fibonacci(seed)
