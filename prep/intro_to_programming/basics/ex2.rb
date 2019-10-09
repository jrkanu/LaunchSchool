# Use the modulo operator, division, or a combination of both
# to take a four digit number and find the digit in the
# 1. thousands place
# 2. hundreds place
# 3. tens place
# 4. ones place
#
# Note: I did not understand the instructions here, so had to take a peek
# at the answer first to understand what the question was asking.
#
# As such, I will copy the answer from the book and explain how it
# works in the comments to demonstrate understanding.

# Divsion of integers returns and integer,
# so the following code returns 4 rather than
# the float 4.936
thousands = 4936 / 1000

# Step 1: Reduce the number down to hundreds
# by using modulo to divide out multilples of
# 1000.
# Step 2. Use the principle of integer division
# again to get 9 instead of 936.
hundreds = 4936 % 1000 / 100

# Build upon the concepts used in the first
# two problems, adding an extra step to get
# the tens place digit.
tens = 4936 % 1000 % 100 / 10

# Integer division is not utilized on this last
# step because (4936 % 1000 % 100) returns 36,
# which, when divided by the integer 10 in Ruby,
# returns 3. In order to get the 6, we moculo
# 36 by 10, which leaves a remainder of 6.
ones = 4936 % 1000 % 100 % 10
