# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

# get int and arg
# validate input
# - loop
# -- break if input matches regex \d+[,\s]?[p|s]
# -- else ask again
# - end
# parse input
# - grab int with //d/ regex
# - grab arg with //w/ regex
# - return as array
# compute result given array [int, arg]
# - if arg == s
# -- calc sum
# - if arg == p
# -- calc product
# print result
#
# note: using for loop to populate array works, but using .each does not. Why?