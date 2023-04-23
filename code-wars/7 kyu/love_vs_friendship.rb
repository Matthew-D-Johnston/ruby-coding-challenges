# love_vs_friendship.rb

def words_to_marks(string)
  alphabet = ('a'..'z').to_a
  result = 0

  string.chars.each { |char| result += (alphabet.index(char) + 1) }

  result
end


puts words_to_marks("attitude") == 100
puts words_to_marks("friends") == 75
puts words_to_marks("family") == 66
puts words_to_marks("selfness") == 99
puts words_to_marks("knowledge") == 96
