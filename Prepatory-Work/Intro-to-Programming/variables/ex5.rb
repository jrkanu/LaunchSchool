# Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x

# and...

y = 0
3.times do
  y += 1
  x = y
end
puts x

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

# Case 1:
#   Prints x with a value of 3, no errors.
#   x is defined outside of the code block, then mutated within the code block.
#   It moves from an outer scope to an inner scope, so no errors arise.
#   We know that the code the do..end is a code block because it follows the method .times.
#
# Case 2:
#   Throws error "undefinied local variable or method for 'x'"
#   As stated above, the code between do..end is a codeblock, and therefor has its own scope.
#   Trying to access a local variable from outside of its scope results in an error.
