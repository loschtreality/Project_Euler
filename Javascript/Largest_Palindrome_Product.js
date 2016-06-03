// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

function palin_num(digits) {
  pal_max = 0
  high = Math.pow(10,digits)
  low = high/10

  for (var i = low; i < high; i++) {
    for (var j = i; j < high; j++) {
      var multiplied = i * j
      if (multiplied.toString() === multiplied.toString().split('').reverse().join('')) {
        pal_max = Math.max(pal_max,multiplied)
      }
    }
  }
  return pal_max
}



console.log(palin_num(3));
