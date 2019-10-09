# Write a method that counts down to zero using recursion.

def countdown(number)
  if number == 0
    number
  else
    puts number
    countdown(number - 1)
  end
end

print "Countdown from: "
countdown_from = gets.chomp.to_i
puts countdown(countdown_from)
