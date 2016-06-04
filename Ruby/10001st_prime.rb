# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10_001st prime number?

def is_prime?(num)
  j = Math.sqrt(num).floor
  2.upto(j) do |i|
    return false if num % i == 0
  end
  true
end


def find_prime(rank)
  i = 3
  prime_count = 1

  until prime_count == rank
    prime_count += 1 if is_prime?(i)
    i += 1
  end

  i-1
end
