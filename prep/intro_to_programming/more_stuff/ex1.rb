# Write a program that checks if the sequence of characters 'lab' exists in the
# following strings. If it does exist, print out the word.

def lab_check(word)
  if /lab/ =~ word
    puts word
  else
    puts "no match"
  end
end

lab_check("laboratory")
lab_check("experiment")
lab_check("Pans Labayrinth")
lab_check("elaborate")
lab_check("polar bear")
