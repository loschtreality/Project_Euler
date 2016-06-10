// The following iterative sequence is defined for the set of positive integers:
//
// n → n/2 (n is even)
// n → 3n + 1 (n is odd)
//
// Using the rule above and starting with 13, we generate the following sequence:
//
// 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
// It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
//
// Which starting number, under one million, produces the longest chain?
//
// NOTE: Once the chain starts the terms are allowed to go above one million.



function collatz_sequence(number) {
  var sequence_count = 1
    while (number !== 1) {
      if (number % 2 === 0) {
        number /= 2
      }
      else if (number % 2 !== 0) {
        number = (number * 3) + 1
      }
      sequence_count++
    }
    return sequence_count
}



function collatz_search(n) {
  var max_collatz = 0
  var max_length = 0

  for (var i = n; i > 3; i--) {
    var collatz = collatz_sequence(i)
    if (collatz > max_length) {
      max_collatz = i
      max_length = collatz
    }
  }

  return max_collatz
}

console.log(collatz_search(1000000));
