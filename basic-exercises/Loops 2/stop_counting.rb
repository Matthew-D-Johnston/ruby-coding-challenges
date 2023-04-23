# stop_counting.rb
# The method below counts from 0 to 4. Modify the block so that it
# prints the current number and stops iterating when the current
# number equals 2.

5.times do |index|
  puts index
  break if index == 2     # will print 3 values: 0 to 2.
end

puts "-----"

5.times do |index|
  puts index
  break if index == 4     # will print 5 values: 0 to 4. 
end

puts "-----"

5.times do |index|
  puts index
  break if index < 7      # will print 1 value: 0.
end