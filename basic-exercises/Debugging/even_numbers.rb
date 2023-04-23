# even_numbers.rb
# We want to iterate through the 'numbers' array and return a new array
# containing only the even numbers. However, our code isn't producing the
# expected output. Why not? How can we change it to produce the expected
# result?

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|  # changed '.map' method to '.select' method
  n.even?                             # remoed 'n if' from line of code (the 'if' is implied in the '.select' method)
end

p even_numbers

