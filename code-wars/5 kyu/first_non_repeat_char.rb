# first_non_repeat_char.rb

def first_non_repeating_letter(string)
  char_hash = Hash.new(0)

  string.each_char do |char|
    char_hash[char.downcase] = string.downcase.count(char.downcase)
  end

  non_repeat_index = char_hash.values.index(1)

  if non_repeat_index
    non_repeat_char = char_hash.keys[non_repeat_index]
    string[non_repeat_char] ? non_repeat_char : non_repeat_char.upcase
  else
    ''
  end
end

p first_non_repeating_letter('sTreSS')
p first_non_repeating_letter('bigGIrrB')
p first_non_repeating_letter('moonmen')
p first_non_repeating_letter('a')
