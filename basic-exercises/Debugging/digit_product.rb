# digit_product.rb
# Given a String of digits, our 'digit_product' method should return the
# product of all digits in the String argument. You've been asked to
# implement this method without using 'reduce' or 'inject'.

# When testing the method, you are surprised by a return value of 0. What's
# wrong with this code and how can you fix it?

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')

# The problem is that the initial value we assigned to the variable
# 'product' was a 0. That means that on line 14 where we are reassigning
# the 'product' variable by each digit from 'digits' multiplied by the
# previous value of 'prduct'. The problem is that with an initial value of
# 0 each new value assigned to 'product' will also be zero because any 
# number times 0 is 0. To fix the problem we change the initial value of
# 'product' to 1.




