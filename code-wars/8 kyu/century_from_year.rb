# century_from_year.rb

def century(year)
  year % 100 == 0 ? year / 100 : (year / 100) + 1
end

puts century(1705) == 18
puts century(1900) == 19
puts century(1601) == 17
puts century(2000) == 20
puts century(89) == 1