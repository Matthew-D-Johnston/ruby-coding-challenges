# passwords.rb
# Write a program that displays a welcome message, but only
# after the user enters the correct password, where the 
# password is a string that is defined as a constant in your
# program. Keep asking for the password until the user enters
# the correct password.

loop do 
  puts "Please enter your password:"
  pw = gets.chomp
  if pw == "Cool beans"
    puts "Welome, Matt!"
    break
  else
    puts "Invalid password!"
  end
end

# LS solution:

PASSWORD = 'SecreT'

loop do 
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'




