# greeting_through_methods2.rb
# Write a method named 'greet' that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

def greet
  "#{hello} #{world}"
end

puts greet

# ...or...

def greet
  hello + ' ' + world
end

puts greet

