# gbye_not_hello.rb
# Given the following code, invoke a destructive method on 'greeting' so
# that 'Goodbye!' is printed insted of 'Hello!'

greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting



