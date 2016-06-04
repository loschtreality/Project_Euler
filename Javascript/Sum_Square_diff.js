// The sum of the squares of the first ten natural numbers is,
//
// 1^2 + 2^2 + .. 10^2 = 385
// The square of the sum of the first ten natural numbers is,
//
// (1 + 2 + ... + 10)^2 = 55^2 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


function square_diff(max) {
    var squareSum = 0
    var sum_to_square = 0

    for (var i = 1; i <= max; i++) {
        squareSum += Math.pow(i, 2)
        sum_to_square += i
    }
    sum_to_square = Math.pow(sum_to_square, 2)

    return sum_to_square - squareSum
}


console.log(square_diff(100));
