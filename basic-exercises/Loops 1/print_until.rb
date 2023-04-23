# print_until.rb
# Given the array of several numbers below, use an until loop to
# print each number. 

# my solution:

numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end


# Launch School solution:

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

