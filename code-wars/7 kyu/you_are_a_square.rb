# you_are_a_square.rb

def is_square(x)
  return false if x < 0
  Math.sqrt(x) == Math.sqrt(x).to_i
end

puts is_square(-1) == false
puts is_square(0) == true
puts is_square(3) == false
puts is_square(4) == true
puts is_square(25) == true
puts is_square(26) == false
