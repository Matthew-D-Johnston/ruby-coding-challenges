# gcd_sum.rb

def solve(s, g)
  solution = -1
  half_the_sum = s/2

  if g > half_the_sum
    solution = -1
  elsif g == half_the_sum
    solution = [g, g]
  else
    (half_the_sum - 1).downto(1) do |n1|
      n2 = s - n1
      solution = [n1, n2] if (n1 % g == 0) && (n2 % g == 0)
    end
  end

  solution
end

p solve(12, 4)
p solve(12, 5)
p solve(10, 2)
p solve(18, 9)
p solve(21, 14)
p solve(21, 9)


