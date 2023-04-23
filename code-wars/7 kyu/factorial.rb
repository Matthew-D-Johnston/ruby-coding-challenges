# factorial.rb

def factorial(n)
  n == 0 ? 1 : (1..n).inject(:*)
end

p factorial(0) == 1
p factorial(1) == 1
p factorial(4) == 24
p factorial(7) == 5040
p factorial(17) == 355687428096000