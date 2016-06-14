# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred divisors?


def tri_num(n)
  (n * (n + 1)) / 2
end




def high_divis(divisors)
    num_found = false
    next_num = 2
    result = nil

    until num_found
      factors = [1]
      triange_n = tri_num(next_num += 1)
      j = Math.sqrt(triange_n).floor
      (2..j).each do |i|
        if triange_n % i == 0
          quotent = triange_n / i
          factors << j
          factors << quotent
        end
      end
      factors << triange_n
      if factors.length > divisors
        result = triange_n
        num_found = true
      end
    end

    result
end
