# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome?(num)
  num.to_s == num.to_s.reverse
end


def palin_num(digits)
  pal_max = 0
  high = (10 ** digits)-1
  low = ((high+1)/10)

  low.upto(high) do |i|
    i.upto(high) do |j|
      multiplied = i * j
      pal_max = [pal_max,multiplied].max if is_palindrome?(multiplied)
    end
  end
  pal_max
end

p palin_num(3)
