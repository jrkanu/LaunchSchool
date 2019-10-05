# Write a method that takes a string as argument.
# The method should return a new, all-caps version of the string, only if the string is longer than 10 characters.
# Example: change "hello world" to "HELLO WORLD".

def say_it_loud(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

p say_it_loud("i'm ugly and i'm proud!")
p say_it_loud("i'm quiet")
