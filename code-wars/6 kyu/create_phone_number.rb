# create_phone_number.rb

def create_phone_number(digits)
  area_code = digits[0..2].join
  pn_start = digits[3..5].join
  pn_end = digits[6..9].join
  "(#{area_code}) #{pn_start}-#{pn_end}"
end

puts create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"
puts create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == "(111) 111-1111"