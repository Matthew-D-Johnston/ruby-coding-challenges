# whats_my_value_7.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a                      # => 7 (incorrect); correct answer: 3

# The reason 'a' now changes is because we are dealing with a 'method
# invocation with a block' rather than a 'method definition.' As the
# Launch School discussion states, "With method definitions, local variable
# scope is restricted to the method definition itself. In contrast, a
# method invocation with a block has more scoping rules; the block can use
# and modify local variables that are defined outside the block."


