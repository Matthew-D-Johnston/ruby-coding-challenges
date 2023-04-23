# day_or_night.rb


daylight = [true, false].sample

def time_of_day(dorn)
  if dorn == true
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)

