# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!


def fact_num(n)
  total = 1
  (1..n).each do |i|
    total *= i
  end
  total
end


def fact_sum(n)
  n.to_s.split('').inject { |a,b| a.to_i + b.to_i }
end


fact_sum(fact_num(100))
