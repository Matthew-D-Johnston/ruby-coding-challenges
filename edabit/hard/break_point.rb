def break_point(num)
  digits = num.to_s.split('').map { |digit| digit.to_i }
  
  digits.each_with_index do |_, index|
    left_side_sum = digits[0..index].reduce(:+)
    right_side_sum = digits[(index + 1)..(digits.length - 1)].reduce(:+)

    if left_side_sum == right_side_sum
      return true
    end
  end

  return false
end

puts (break_point(159780))
puts (break_point(112))
puts (break_point(1034))
puts (break_point(10))
puts (break_point(343))

