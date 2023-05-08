def total_overs(total_balls)
  overs = total_balls / 6
  balls = total_balls % 6
  overs + (balls.to_f / 10)
end

puts total_overs(2400)
puts total_overs(164)
puts total_overs(945)
puts total_overs(5)