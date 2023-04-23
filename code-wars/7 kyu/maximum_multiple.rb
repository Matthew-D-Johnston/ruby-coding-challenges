# maximum_multiple.rb

def max_multiple(divisor, bound)
  n = bound
  n -= 1 until n % divisor == 0
  n
end

puts max_multiple(2, 7)
puts max_multiple(3, 10)
puts max_multiple(7, 17)
puts max_multiple(10, 50)
puts max_multiple(37,200)
puts max_multiple(7, 100)
