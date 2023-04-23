# control_the_loop.rb
# Modify the following loop so it iterates 5 times instead of
# just once. 

iterations = 1

loop do
  while iterations <= 5
    puts "Number of iterations = #{iterations}"
    iterations += 1
  end
  break
end

# Launch School solution:

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end






