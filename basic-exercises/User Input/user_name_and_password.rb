# user_name_and_password.rb
# In the previous exercise, you wrote a program to solicit a
# password. In this exercise, you should modify the program so it
# also requires a user name. The program should solicit both the
# user name and the password, then validate both, and issue a 
# generic error message if one or both are incorrect; the error
# message should not tell the user which item is incorrect.

USRNAME = "Matt_J"
PASSWORD = "NotTelling"


loop do 
  puts "Please enter your user name:"
  usr_name = gets.chomp
  puts "Please enter your password:"
  pw = gets.chomp
  break if usr_name == USRNAME && pw == PASSWORD
  puts "Authorization failed!"
end

puts "Welcome!"



