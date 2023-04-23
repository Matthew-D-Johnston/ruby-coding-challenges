# whats_my_value_9.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = 7 
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a                # => 7 (correct answer)

# This is because the 'a' defined in the method block refers to the
# parameter 'a' rather than the 'a' variable defined in the outer
# scope of the method. Thus we are dealing with a different 'a' inside 
# the method. 

