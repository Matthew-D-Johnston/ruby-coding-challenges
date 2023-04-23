# alphabetical_addition.rb

def add_letters(*letters)
  alphabet = (('a'..'y').to_a).unshift('z')
  letters_sum = 0
  letters.each { |char| letters_sum += alphabet.index(char) }
  alphabet[letters_sum % 26]
end

puts add_letters('a', 'b', 'c') == 'f'
puts add_letters('a', 'b') == 'c'
puts add_letters('z') == 'z'
puts add_letters('z', 'a') == 'a'
puts add_letters('y', 'c', 'b') == 'd'
puts add_letters() == 'z'
