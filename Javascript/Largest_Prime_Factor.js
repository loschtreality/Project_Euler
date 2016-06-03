// The prime factors of 13195 are 5, 7, 13 and 29.
//
// What is the largest prime factor of the number 600851475143 ?


function num_prime(num) {
  var is_prime = true
  for (var i = 2, j = Math.floor(Math.sqrt(num)); i < j; i++) {
    if (num % i === 0) {
      is_prime = false
    }
  }
  return is_prime
}


function prime_factor(num) {
  var gcf = 0
  for (var i = 2, j = Math.floor(Math.sqrt(num)); i < j; i++) {
    if (num % i === 0 && num_prime(i)) {
      gcf = i
    }
  }
  return gcf
}
