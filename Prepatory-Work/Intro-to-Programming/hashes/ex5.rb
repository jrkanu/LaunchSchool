# What method could you use to find out if a Hash contains a specific value in it?
# Write a program to demonstrate this use.

me = {
  name: "Olive",
  occupation: "meat cutting apprentice",
  age: 26,
  languages: ["english", "japanese"]
}

p me.values.include? "money"
p me.values.include? "Olive"

# Hashs also have the method 'has_value?' to do this more directly.
