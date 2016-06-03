// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


function smallest_mult(range) {
  var result = range[1]
  var no_remainder = false

  while (!no_remainder) {
    var mods_all = true
    for (var i = range[0]; i <= range[1]; i++) {
      if (result % i > 0) {
        mods_all = false
        break
      }
    }
    mods_all ? no_remainder = true : result += range[1]
  }
  return result
}
