# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

def sieve(n)
  list = Array.new(n,true)
  crossLimit = Math.sqrt(n).floor
  output = []

  (2..crossLimit).each do |i|
    if list[i]
      j = i * i
        while j < n
          list[j] = false
          j += i
        end
    end
  end

  (2..n).each do |i|
    if list[i]
      output << i
    end
  end


  output
end

def sum_prime(num)
  sieve(num).inject(&:+)
end
