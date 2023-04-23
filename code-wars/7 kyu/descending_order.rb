# descending_order.rb

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

puts descending_order(21445) == 54421
puts descending_order(145263) == 654321
puts descending_order(1254859723) == 9875543221
