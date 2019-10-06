# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(string, times)
  times.times do
    print string
  end
end

repeat("na ", 16)
puts "BAT-mannnnn!"