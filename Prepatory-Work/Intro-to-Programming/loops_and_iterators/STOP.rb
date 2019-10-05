# Write a while loop that takes input from the user, performs and action,
# and only stops when the user types "STOP".

annoying = true

puts "POKE! HAHA, I POKED YOU!"

while annoying
  print "I LIKE POKING THINGS! WHAT SHOULD I POKE NEXT? "
  poke_this = gets.chomp
  unless poke_this == "STOP!" # Gotta be firm!
    puts "I POKED #{poke_this.upcase}!"
  else
    puts "you're no fun :c"
    break
  end
end
