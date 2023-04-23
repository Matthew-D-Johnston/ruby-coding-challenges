# print_while.rb
# Using a 'while' loop, print 5 random numbers between 0 and 99.
# The code below shows an example of how to begin sovling this
# exercise. 

numbers = []

while numbers.length < 5
  numbers << rand(100)
end

puts numbers



