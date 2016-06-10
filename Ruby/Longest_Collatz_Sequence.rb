# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.


def collatz_sequence(number)
  sequence_count = 1
  until number == 1
    if number % 2 == 0
      number /= 2
    elsif number % 2 != 0
      number = (number * 3) + 1
    end
    sequence_count += 1
  end
  sequence_count
end


def collatz_search(n)
  max_collatz = 0
  max_length = 0

  n.downto(3) do |i|
    collatz = collatz_sequence(i)
    if collatz > max_length
      max_collatz = i
      max_length = collatz
    end
  end
  max_collatz
end
