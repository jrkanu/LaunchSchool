# Write a program that uses a hash to store a list of movie titles
# with the year they came out. Then use the 'puts' command to make
# your program print out the year of each movie to the screen.

movies = {
  "Titanic" => 1997,
  "Inception" => 2010
}

puts movies.each_value { |v| puts v }

# Output:

# $ 1997
# $ 2010
# $ {"Titanic"=>1997, "Inception"=>2010}

# Q: Why does it return the hash on the last line?
