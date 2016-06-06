# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a^2 + b^2 = c^2
# For example, (3^2 + 4^2) --> (9 + 16) = 25 <-- 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


def trips(a,b,c)
  (a ** 2) + (b ** 2) == c**2
end

def special_poth(number)
  (1..number).each do |c|
    (1..c).each do |b|
      (1..b).each do |a|
        return (a * b * c) if trips(a,b,c) && (a + b + c) == number
      end
    end
  end
end
