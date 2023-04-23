# whats_my_value_2.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)               # => 17
puts a                    # => 7


# the a in the my_value method is different from the a defined in
# the outer scope. my_value method does not change the original
# a object but points to a new object.



