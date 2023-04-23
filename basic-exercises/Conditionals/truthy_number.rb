# truthy_number.rb
# What will the following code print? Why? Don't run it until you've
# attempted to answer.

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# The code will cause "My favorite number is 7." to be printed to the
# screen. This will happen despite the fact that there is no explicit
# comparison operator being used to check if 'number' meets a certain
# criteria. Since all values except 'nil' and 'false' evaluate to true,
# the 'if' portion of the 'if/else' statement will be executed.

