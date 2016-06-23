# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.

# if friend(i) == outcome && amigo(outcome) == i

def divisor_sum(n)
  divs = []

  (1..(n-1)).each do |i|
    divs << i if n % i == 0
  end

  divs.inject(&:+)
end


def amicable_sum(n)
  amis = []
  (2..(n-1)).each do |i|
    friend = divisor_sum(i)
    amigo = divisor_sum(friend)

    amis << friend if amigo == i && i != friend

  end

  amis.inject(&:+)
end
