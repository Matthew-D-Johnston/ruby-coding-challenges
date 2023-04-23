# combining_names.rb
# Using the following code, combine the two names together to form a full
# name and assign that value to a variable named full_name. Then, print the
# value of full_name.

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name

#...or...

full_name = first_name + ' ' + last_name
puts full_name

#...or, if we don't want to create a new variable...

first_name = 'John'
last_name = 'Doe'

first_name << last_name
puts first_name 



