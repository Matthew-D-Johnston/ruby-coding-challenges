# greeting.rb
# Given the code below, use a 'while' loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings < 4
  greeting
  number_of_greetings += 1
end

puts "-----"


# ...or...

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings == 2
  greeting
  greeting
  number_of_greetings += 1
end



