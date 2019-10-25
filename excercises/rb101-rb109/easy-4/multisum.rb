# # Write a method that searches for all multiples of 3 or 5 that lies between 1
# and some other number, and then computes the sum of those multiples.

def multisum(limit)
  multiples = []

  for num in 1..limit
    multiples << num if num % 3 == 0 || num % 5 == 0
  end

  multiples.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168