# whats_my_value_8.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a                    # => 3 (incorrect); correct answer: Error message

# The error message indicates that 'a' is an undefined local variable or
# method. The problem is that when we try to 'puts a', a was never defined
# in the scope within which we are trying to call it. Thus, while a method
# invocation followed by a block can change a variable already defined
# outside the method, one cannot call a variable first defined inside the method
# outside of the method. The expression a = element on line 8 is an 
# initialization rather than a reassignment.

