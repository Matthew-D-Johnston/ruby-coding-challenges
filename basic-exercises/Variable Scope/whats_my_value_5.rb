# whats_my_value_5.rb
# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a                  # => 'yzzyX' (wrong); correct answer: 'Xyzzy'

# 