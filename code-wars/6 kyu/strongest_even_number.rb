#strongest_even_number.rb

# def strongest_even(int_start, int_end)
#   evens = (int_start..int_end).to_a.select { |n| n.even? }
#   evens = evens[-100..-1] if evens.size > 100

#   current_strongness = 0
#   current_strongest = 1

#   evens.each do |even_number|
#     if current_strongness < strongness(even_number)
#       current_strongness = strongness(even_number)
#       current_strongest = even_number
#     elsif current_strongness == strongness(even_number)
#       current_strongest = even_number if even_number < current_strongest
#     end
#   end

#   current_strongest
# end

# def strongness(even_number)
#   result = even_number
#   counter = 0

#   loop do
#     if result.even?
#       result = result / 2
#     else
#       break
#     end

#     counter += 1
#   end

#   counter
# end

# puts strongness(2)
# puts strongness(5)
# puts strongness(8)
# puts strongness(32)
# puts strongness(48)

# puts strongest_even(1, 2) == 2
# puts strongest_even(5, 10) == 8
# puts strongest_even(48, 56) == 48
# puts strongest_even(129, 193) == 192
# puts strongest_even(1, 1000000000000)


# Solution 2:

# def strongest_even(int_start, int_end)
#   interval = (int_start..int_end).to_a
#   evens = interval.select { |n| n.even? }
#   strongest = []

#   loop do
#       split = evens.map { |n| n / 2 }
#       break if split.all? { |n| n.odd? }
#       even_idx = []
#       split.each_with_index do |n, idx|
#         even_idx << idx if n.even?
#       end

#       even_idx.each do |n|
#         strongest << evens[n]
#       end

#       evens = split.select { |n| n.even? }

#       # evens = split.select { |n| n.even? }
#       # strongest = evens.min
#   end

#   evens.min
# end

# puts strongest_even(1, 2)
# puts strongest_even(5, 10)



# def strongest_even(int_start, int_end)
#   interval = (int_start..int_end).to_a
#   strongness = []

#   if interval.any? { |n| find_root(n, 1) != 0 }
#     interval.each do |n|
#       strongness << find_root(n, 1)
#     end

#     strongest = interval[strongness.index(strongness.max)]
#   else



#   end

# end


# def find_root(num, den)
#   root = 0
  
#   1.upto(64) do |n|
#     root = n if 2**n == num / den
#   end

#   root  
# end

# require 'pry'

# def strongest_even(int_start, int_end)
#   markers = []
#   1.upto(64) do |n|
#     markers << 2**n
#   end

#   last_marker = nil

#   markers.each do |marker|
#     last_marker = marker if (int_start..int_end).include?(marker)
#   end

#   if last_marker
#     interval = (last_marker..int_end).to_a
#   else
#     interval = (int_start..int_end).to_a
#   end

#   evens = interval.select { |n| n.even? }
#   evens_copy = evens
#   strongest = evens

#   loop do
#     halves = evens_copy.map { |n| n / 2 }
#     even_idx = []
#     halves.each_with_index { |n, idx| even_idx << idx if n.even? }

#     if even_idx.empty?
#       break
#     else
#       strongest = []
#       even_idx.each { |idx| strongest << evens[idx] }
#       break if strongest.size == 1
#       evens_copy = halves.select { |n| n.even? }
#       evens = strongest
#     end
#   end

#   strongest.min
# end

# puts strongest_even(1, 2) == 2
# puts strongest_even(5, 10) == 8
# puts strongest_even(48, 56) == 48
# puts strongest_even(129, 193) == 192
# puts strongest_even(129, 100043400)


def number_leading_zeros(reverse_binary)
  leading_zeros = 0
  reverse_binary.chars.each do |char|
    if char == "0"
      leading_zeros += 1
    else
      break
    end
  end

  leading_zeros
end

def strongest_even(int_start, int_end)
  markers = []
  1.upto(64) do |n|
    markers << 2**n
  end

  last_marker = nil

  markers.each do |marker|
    last_marker = marker if (int_start..int_end).include?(marker)
  end

  if last_marker
    interval = (last_marker..int_end).to_a
  else
    interval = (int_start..int_end).to_a
  end

  evens = interval.select { |n| n.even? }

  # interval = (int_start..int_end).to_a
  # evens = interval.select { |n| n.even? }

  reverse_binaries = evens.map { |n| ("%b" % n).reverse }
  evens[reverse_binaries.index(reverse_binaries.min)]
end

puts strongest_even(1, 2) == 2
puts strongest_even(5, 10) == 8
puts strongest_even(48, 56) == 48
puts strongest_even(129, 193) == 192
puts strongest_even(129, 10004340)

# puts number_leading_zeros("00001")
# puts number_leading_zeros("10010")
# puts number_leading_zeros("00000000000000000000000000000000000000000000000000000000000000001")


