# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("yeah boi")

# Predicted answer: "yeah boi!!!!"
# Actual answer: nothing, because the return keyword exits the method immediately
# regardless of what may come after it.
