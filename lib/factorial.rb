# YOUR CODE HERE
require 'benchmark'

def factorial(n)
  if n <= 1
    1
  else
    n * factorial(n - 1)
  end
end

Benchmark.bm do |x|
  x.report { factorial(1) }
  x.report { factorial(2) }
  x.report { factorial(3) }
  x.report { factorial(4) }
  x.report { factorial(5) }
  x.report { factorial(0) }
end
