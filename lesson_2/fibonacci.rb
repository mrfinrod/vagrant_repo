
fib1 = 0
fib2 = 1
fib_sum = 0

while fib_sum < 100
  puts fib_sum
  fib_sum = fib2 + fib1
  fib1 = fib2
  fib2 = fib_sum
end
