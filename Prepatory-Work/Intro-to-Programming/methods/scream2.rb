# 1) Edit the method definition in exercise #4 so that it does print words on the screen.
# 2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("yeah boi")

# Removing the return statement allows the program to proceed as usual,
# and then implicitly return the value of the last expression evaluated.
# In this case, it returns "yeah boi!!!!" as expected.
