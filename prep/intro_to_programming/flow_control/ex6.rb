# Why does this code...

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

# ...produce this error message...
# => exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
#
# A: There is a missing end statement. There needs to be one both for the if
# statement within the method definition and for the method definition itself.
