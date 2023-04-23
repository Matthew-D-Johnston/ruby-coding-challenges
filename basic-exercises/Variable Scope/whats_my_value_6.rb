# whats_my_value_6.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b = a + a
end

puts my_value(a)
puts a                # => 7 (incorrect); correct answer: Error message


# The reason for the error message is 'a' within the method is undefined.
# I think I'm beginning to understand this: when I pass the argument a
# to the my_value method, essentially it's assigning a's value to a new
# object or variable 'b', so now b = 7, but a does not exist within the
# method. Thus, referring to 'a' within the method does not refer to the
# outer scope variable 'a'; it is an undefined 'a'. I think the way I 
# conceived it before was that when 'a' was passed as an argument it was
# replacing 'b', so that the method was actually pulling 'a' from the
# outer scope into the inner scope of the method.

