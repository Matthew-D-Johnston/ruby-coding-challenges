# summing_a_numbers_digits.rb

def sum_digits(number)
  number.abs.digits.sum
end

puts sum_digits(10)  # Returns 1
puts sum_digits(99)  # Returns 18
puts sum_digits(-32) # Returns 5