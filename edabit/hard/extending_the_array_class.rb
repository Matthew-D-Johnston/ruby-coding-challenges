class Array
  def square
    self.map { |el| el ** 2 }
  end

  def cube
    self.map { |el| el ** 3 }
  end

  def divisible_by(num)
    self.select { |el| el % num == 0 }
  end

  def strictly_above(num)
    self.select { |el| el > num }
  end

  def strictly_below(num)
    self.select { |el| el < num }
  end
end

print [1, 2, 3].square
puts ''
print [1, 2, 3].cube
puts ''
print [1, 2, 3, 4].divisible_by(2)
puts ''
print [1, 2, 3, 4].strictly_above(1)
puts ''
print [1, 2, 3, 4].strictly_below(2)
puts ''
