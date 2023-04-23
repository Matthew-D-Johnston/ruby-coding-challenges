# whats_my_value_10.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)             # => 6 (incorrect); leads to an error message
puts a                      # => 7

# The 'a' variable, because it is within the method definition 'my_value',
# is undefined and thus trying to += it raises an exception. 