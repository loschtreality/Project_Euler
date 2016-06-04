// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//
// What is the 10,001st prime number?

function is_prime(num) {
  for (var i = 2, j = Math.floor(Math.sqrt(num)); i <= j; i++) {
    if (num % i === 0) return false
  }
  return true
}


function find_prime(rank) {
  var i = 3
  var prime_count = 1

  while (prime_count !== rank) {
    if(is_prime(i)) prime_count++
    i++
  }
  return i-1
}
