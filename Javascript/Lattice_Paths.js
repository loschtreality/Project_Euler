// Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
//
// How many such routes are there through a 20×20 grid?


function lattice(len,wid) {
  var steps = len + wid
  var paths;
  var factorial_denominator = 1
  var choose_numerator = 1

  for (var i = len; i > 0; i--) {
    factorial_denominator *= i
  }

  for (var i = steps; i > (steps - len); i--) {
    choose_numerator *= i
  }

  paths = Math.round(choose_numerator / factorial_denominator)

  return paths
}
