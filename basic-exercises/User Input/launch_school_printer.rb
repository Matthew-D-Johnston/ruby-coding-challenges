# launch_school_printer.rb
# Write a program that prints 'Launch School is the best!'
# repeatedly until a certain number of lines have been printed.
# The program should obtain the number of lines from the user,
# and should insist that at least 3 lines are printed.


loop do 
  puts "How many output lines do you want? Enter a number (minimum 3):"
  num = gets.chomp.to_i
  if num >= 3
    num.times { puts "Launch School is the best!" }
    break
  else
    puts "That's not enough lines."
  end
end