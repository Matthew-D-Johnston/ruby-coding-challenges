TIME_TO_WASH_HANDS = 21
DAYS_IN_MONTH = 30

def wash_hands(wash, month)
  total_time_in_seconds = TIME_TO_WASH_HANDS * wash * month * DAYS_IN_MONTH
  minutes = total_time_in_seconds / 60
  seconds = total_time_in_seconds % 60
  "#{minutes} minutes and #{seconds} seconds"
end

puts wash_hands(8, 7)
puts wash_hands(0, 0)
puts wash_hands(7, 9)

