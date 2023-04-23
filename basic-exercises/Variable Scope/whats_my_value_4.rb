# whats_my_value_4.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

puts my_value(a)             # This will either print out "X-zzy" or "Xy-zy"
puts a                       # This will print out the original value of a, "Xyzzy"

# Correct answer:
# puts my_value(a) => '-'
# puts a => 'Xy-zy'






