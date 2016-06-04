# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + .. 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def squares(max)
  sum = 0
  1.upto(max) do |i|
    sum += i**2
  end
  sum
end

def sum_squares(max)
  sum = 0
  1.upto(max) do |i|
    sum += i
  end
  sum**2
end

def square_diff(square_sum, square_each)
  square_sum - square_each
end

p square_diff(sum_squares(100), squares(100))
