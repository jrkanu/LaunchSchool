# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.
#
# Original pseudocode draft (actual program strays from this a bit)
#
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

# Constants and Methods
GREET_MSG = <<~GREET
This application will calculate the sum or product of all numbers between 1 and
the entered integer. It accepts an integer followed by one of two arguments: 's'
for sum or 'p' for product. For example, to find the sum of all integers between
1 and 9, enter "9, s".
GREET

def prompt(msg, get_input = true)
  # When get_input flag is set to false, msg is printed without newline for
  # user input. For displaying a msg with no need for input.
  if get_input
    print "\n>> " + msg + "\n>> "
  else
    print "\n>> " + msg
  end
end

def valid_input(input)
  # Roughly matches digit followed by optional comma and either 'p' or 's'.
  # Examples of passing strings: "9, s" "22p" "11 S" "99,p"
  # Also accepts 'q' or 'Q' to quit.
  input =~ /\d+,*?\s*?[Pp|Ss]/ || input =~ /[Qq]/
end

def parse_input(input)
  # Assumes validated input.
  # Extracts integer and argument, returns as an array.
  int = input.match(/\d/).to_s.to_i
  arg = input.match(/[Ss|Pp]/).to_s.downcase

  [int, arg]
end

def calculate_sum(range_of_ints)
  range_of_ints.reduce(:+)
end

def calculate_product(range_of_ints)
  range_of_ints.reduce(:*)
end

def calculate_result(int_and_arg_array)
  # Accepts an array containing an interger and either 's' or 'p'. Ex: [9, 's']
  int = int_and_arg_array[0]
  arg = int_and_arg_array[1]

  # Populate range of ints up to user-given int.
  range_of_ints = []
  for num in 1..int
    range_of_ints << num
  end

  # Calculate sum
  if arg == 's'
    return calculate_sum(range_of_ints)
  end

  # Calculate product
  if arg == 'p'
    return calculate_product(range_of_ints)
  end
end

def show_confirmation(int_and_arg_array)
  int = int_and_arg_array[0]
  arg = int_and_arg_array[1]

  if arg == 's'
    prompt("Caclulating the sum of all integers between 1 and #{int}...", false)
  elsif arg == 'p'
    prompt("Calculating the product of all integers between 1 and #{int}...", false)
  end
end

# Main program
prompt(GREET_MSG, get_input = false)

# Repeat until user wants to quit.
loop do
  prompt("Enter an integer and an argument, or 'q' to quit.")
  user_input = nil

  # Validate input
  loop do
    user_input = gets.chomp
    break if valid_input(user_input)
    prompt("Couldn't parse that. Try entering it a different way.")
  end

  # Quit?
  # Added as afterthought, so a little sloppy.
  if user_input =~ /[Qq]/
    prompt("Goodbye.", get_input = false)
    break
  end

  # Organize data
  int_and_arg_array = parse_input(user_input)
  result = calculate_result(int_and_arg_array)

  # Show what's happening
  show_confirmation(int_and_arg_array)

  # Print result
  prompt("The result is: #{result}\n", false)
end
