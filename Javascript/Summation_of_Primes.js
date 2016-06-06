// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//
// Find the sum of all the primes below two million.

function sieve(n) {
    var list = []
    var crossLimit = Math.floor(Math.sqrt(n))
    var output = []

    for (var i = 0; i < n; i++) {
        list.push(true)
    }

    for (var i = 2; i <= crossLimit; i++) {
        if (list[i]) {
            for (var j = i * i; j < n; j += i) {
                list[j] = false
            }
        }
    }

    for (var i = 2; i < n; i++) {
        if (list[i]) {
            output.push(i)
        }
    }

    return output
}

function sum_prime(num) {
  return sieve(num).reduce(function(a,b) {
    return a + b;
  });
}
