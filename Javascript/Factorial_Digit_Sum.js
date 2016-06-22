// n! means n × (n − 1) × ... × 3 × 2 × 1
//
// For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
// and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
//
// Find the sum of the digits in the number 100!


function fact_sum(n) {
  var factorial = 1

  for (var i = 1; i <= n; i++) {
    factorial *= i
  }

  return String(factorial).split('').reduce(
    function (prev, curr){
      return Number(prev) + Number(curr)
    }
  )


}


console.log(fact_sum(100));
