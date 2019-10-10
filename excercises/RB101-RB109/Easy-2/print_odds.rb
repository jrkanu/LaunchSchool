# Print all odd numbers from 1 to 99 inclusive, all on separate lines.

# Solution
puts 'Using for loop and range:'
for num in 1..99
  puts num if num.odd?
end

# Alt solution
puts 'Using Interger.upto()'
1.upto(99) { |int| puts int if int.odd? }
