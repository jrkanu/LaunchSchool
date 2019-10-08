# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

# Pseudocode:
#
# Given integer n,
#
# Alternate between printing 1 and 0 n times, always starting with 1
# - SET ones_and_zeroes = []
# - LOOP n times:
# -- IF ones_and_zeroes.empty?
# --- ones_and_zeroes << 1
# -- ELSE IF ones_and_zeroes.last == 1
# --- ones_and_zeroes << 0
# -- ELSE
# --- ones_and_zeroes << 1
# -- END
# - RETURN ones_and_zeroes

def stringy(n)
  ones_and_zeroes = []

  n.times do
    if ones_and_zeroes.empty?         # Always start with 1
      ones_and_zeroes << 1
    elsif ones_and_zeroes.last == 1   # Check last digit and print the opposite
      ones_and_zeroes << 0
    else
      ones_and_zeroes << 1
    end
  end

  ones_and_zeroes.join                # Return as a string
end

puts stringy(6) == '101010'     #=> true
puts stringy(9) == '101010101'  #=> true
puts stringy(4) == '1010'       #=> true
puts stringy(7) == '1010101'    #=> true
