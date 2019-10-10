# Build a program that randomly generates and prints Teddy's age. To get the
# age, you should generate a random number between 20 and 200.

def how_old_is_teddy(name="Teddy")
  puts "Whose age shall we proclaim today?"
  name = gets.chomp
  puts "#{name.capitalize} is #{rand(20..200)} years old!"
end

how_old_is_teddy()
