# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def num_prime?(num)
  j = Math.sqrt(num).floor
  is_prime = true
  (2..j).each do |i|
    is_prime = false if num % i == 0
  end
  is_prime
end


def prime_factor(num)
  gcf = 0
  (2..Math.sqrt(num).floor).each do |i|
    if num % i === 0 && num_prime?(i)
      gcf = i
    end
  end
  gcf
end
