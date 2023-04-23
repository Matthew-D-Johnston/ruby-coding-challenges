# dividing_numbers.rb
# Write a program that obtains two Integers from the user, then
# prints the results of dividing the first by the second. The 
# second number must not be 0, and both numbers should be
# validated using this method:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num = nil
den = nil

loop do 
  puts "Please enter the numerator:"
  num = gets.chomp
  break if valid_number?(num)
  puts "Invalid input. Only integers are allowed."
end

loop do 
  puts "Please enter the denominator (cannot be 0):"
  den = gets.chomp
  if valid_number?(den) == true && den != "0"
    break
  elsif den == "0"
    puts "Invalid input. A denominator of 0 is not allowed"
    next
  elsif valid_number?(den) == false
    puts "Invalid input. Only integers are allowed."
  end
end

div = num.to_i / den.to_i

puts "#{num} / #{den} is #{div.to_s}"


    

