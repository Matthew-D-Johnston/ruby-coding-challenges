# pluralize.rb
# Given the following code, use Array#each to print the plural of each word
# in words.

words = 'car human elephant airplane'

words_array = words.split(' ')

puts words_array.each { |word| word << 's' }

#...or...

words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end





