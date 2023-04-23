# digital_root.rb

def digital_root(n)
  until n < 10
    n = n.digits.sum
  end
  n
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(456) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2