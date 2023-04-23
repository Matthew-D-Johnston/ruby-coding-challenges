# print_something_part1.rb
# Write a program that asks the user whether they want the program
# to print "something", then print it if the user enters y.
# Otherwise, print nothing.

puts "Do you want me to print something? (y/n)"
response = gets.chomp

if response.downcase == 'y'
  puts "something"
end

