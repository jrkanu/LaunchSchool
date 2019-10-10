# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

# get int and arg
# validate input
# - loop
# -- break if input matches regex \d+[,\s]?[Pp|Ss]
# -- else ask again
# - end
# parse input
# - grab int with //d/ regex
# - grab arg with /[Ss|Pp]/ regex
# - return as array
# compute result given array [int, arg]
# - if arg == s
# -- calc sum
# --- reduce(:+)
# - if arg == p
# --- reduce(:*)
# -- calc product
# print result
#
# note: using for loop to populate array works, but using .each does not. Why?

GREET_MSG = <<~GREET
\n* This application will calculate the sum or product of all numbers between 1
and the entered integer. It accepts an integer followed by one of two arguments:
's' for sum or 'p' for product. For example, to find the sum of all integers
between 1 and 9, enter "9, s".
GREET

puts GREET_MSG

def prompt(msg)
  print "\n>> " + msg + "\n>> "
end

def valid_input(input)
  # Roughly matches digit followed by optional comma and either 'p' or 's'.
  # Examples of passing strings: "9, s" "22p" "11 S" "99,p"
  input =~ /\d+[,\s]?[Pp|Ss]/
end

def parse_input(input)
  # Assumes validated input.
  # Extracts integer and argument, returns as an array.
  int = input.match(/\d/).to_s.to_i
  arg = input.match(/[Ss|Pp]/).to_s

  [int, arg]
end

def calculate_result(arguments)
  # Accepts an array containing an interger and either 's' or 'p'.
  # Todo: change to dictionary?
end

prompt("Enter an integer and an argument.")
user_input = nil

loop do
  user_input = gets.chomp
  break if valid_input(user_input)
  prompt("Couldn't parse that. Try entering it a different way.")
end

int_and_arg_array = parse_input(user_input)
result = calculate_result(int_and_arg_array)