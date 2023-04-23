# sum_of_numbers.rb

def get_sum(n1, n2)
  n1 <= n2 ? (n1..n2).reduce(:+) : (n2..n1).reduce(:+)
end

puts get_sum(1, 0) == 1    # 1 + 0 = 1
puts get_sum(1, 2) == 3    # 1 + 2 = 3
puts get_sum(0, 1) == 1    # 0 + 1 = 1
puts get_sum(1, 1) == 1    # 1 Since both are the same
puts get_sum(-1, 0) == -1  # -1 + 0 = -1
puts get_sum(-1, 2) == 2   # - 1 + 0 + 1 + 2 = 2
