// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
// Find the sum of all the multiples of 3 or 5 below 1000.


function m35() {
  var mults = []
  for (var i = 1; i < 1000; i++) {
    if ((i % 3 === 0 || i % 5 === 0) && mults.indexOf(i) === -1) {
      mults.push(i);
    }
  }
  return mults.reduce(function(prev,curr){ return prev + curr;});
}
