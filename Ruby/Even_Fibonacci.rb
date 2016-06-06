# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


def even_fib(n)
  fib_start = 1
  fib_prev = 1
  total_fib = fib_prev + fib_start
  evens_total = 0
  while total_fib < n
    evens_total += total_fib
    fib_prev = fib_start + total_fib
    fib_start = fib_prev + total_fib
    total_fib = fib_prev + fib_start
  end
  evens_total
end
