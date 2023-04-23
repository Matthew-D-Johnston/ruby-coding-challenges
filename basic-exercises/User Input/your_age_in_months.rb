# your_age_in_months.rb
# Write a program that asks the user for their age in years, and
# then converts that age to months.

puts ">> What is your age in years?"

usr_age = gets.chomp.to_i

in_months = usr_age * 12

puts "You are #{in_months} months old."
