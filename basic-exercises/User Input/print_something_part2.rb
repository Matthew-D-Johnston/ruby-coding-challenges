# print_something_part2.rb
# 

puts "Do you want me to print something? (y/n)"
response = gets.chomp.downcase

loop do
  if response != 'y' && response != 'n'
    puts "Invalid response. Please type either 'y' or 'n'."
    response = gets.chomp.downcase
  elsif response == 'y'
    puts "something"
    break
  else
    break
  end
end

# LS solution:

choice = nil
loop do 
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'






