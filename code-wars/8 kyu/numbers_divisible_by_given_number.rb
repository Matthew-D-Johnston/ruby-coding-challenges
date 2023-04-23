def divisible_by(numbers, divisor)
  numbers.select { |number| number % divisor == 0 }
end

p divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]
p divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]
p divisible_by([1, 2, 3, 4, 5, 6], 3) == [3, 6]
p divisible_by([0, 1, 2, 3, 4, 5, 6], 4) == [0, 4]
p divisible_by([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 17) == [0]
