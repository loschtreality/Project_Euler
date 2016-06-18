# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
#
# How many such routes are there through a 20×20 grid?


def lattice(len,wid)
  steps = len + wid
  factorial_denominator = 1
  choose_numerator = 1

  (len).downto(1) do |i|
    factorial_denominator *= i
  end

  (steps).downto((steps - len) + 1) do |i|
    choose_numerator *= i
  end

  (choose_numerator / factorial_denominator).floor
end
