# whats_my_value_3.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)             # => 12
puts a                      # => 12 (incorrect); correct answer is 7

# This time a will be changed because the method my_value is
# actually referring to the outer scope variable and assigning
# it a new value.

# My above answer was incorrect. I guess that the within the method
# is independent from the a in the outer scope. As the Launch School
# solution indicates: "Once again, the local variable a inside the 
# my_value method is not visible outside the my_value method
# definition. Furthermore, the local variable a at the top level is
# not visible inside my_value because method definitions are self-
# contained with respect to local variables."




