# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def smallest_mult(range)
  result = range.last
  no_remainder = false

  until no_remainder
    mods_all = true
    (range.first..range.last).each do |i|
      if result % i > 0
        mods_all = false
        break
      end
    end
    mods_all ? no_remainder = true : result += range.last
  end

  result
end
