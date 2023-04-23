# opposites_attract.rb
# Write a program that requests two integers from the user, adds
# them together, and then displays the result. Furthermore,
# insist that one of the integers be positive, and one negative;
# however, the order in which the two integers are entered does
# not matter.

# Do not check for the positive/negative requirement until both
# integers are entered, and start over if the requirement is not
# met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0 
end


loop do 
  puts "Please enter a positive or negative integer:"
  int_1 = gets.chomp
  
  if int_1.to_i == 0
    puts "Invalid input. Only non-zero integers are allowed."
    next
  end

  puts "Please enter a positive or negative integer:"
  int_2 = gets.chomp

  loop do 
    if int_2.to_i == 0
      puts "Invalid input. Only non-zero integers are allowed."
      puts "Please enter a positive or negative integer:"
      int_2 = gets.chomp
      break if int_2.to_i != 0
    else
      break
    end
  end
  
  if (int_1.to_i >= 0 && int_2.to_i >= 0) || (int_1.to_i <= 0 && int_2.to_i <= 0)
    puts "Sorry. One integer must be positive, one must be negative"
    puts "Please start over"
    next
  end

  addition = int_1.to_i + int_2.to_i
  puts "#{int_1.to_i} + #{int_2.to_i} = #{addition}"
  break

end


# or, LS solution:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"


