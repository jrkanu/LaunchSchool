# Write a program that takes a number from the user between 0 and 100 and reports
# back whether the number is between 0 and 50, 51 and 100, or above 100.
# Do it using a case statement wrapped in a method.

print "NEED INPUT: "
num = gets.chomp.to_i

def check_num(num)
  case num
  when 0..50
    "It's between 0 and 50. But you knew that."
  when 51..100
    "It's between 51 and 100. Obviously."
  else
    if num < 0
      "Thanks for playing, try again."
    else
      "WOWZERS THAT'S A BIG NUMBER!!"
    end
  end
end

p check_num(num)
