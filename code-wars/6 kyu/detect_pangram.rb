# detect_pangram

def pangram?(string)
  letters = ('a'..'z').to_a
  booleans = letters.map do |letter|
    string.include?(letter) || string.include?(letter.upcase)
  end

  booleans.all?
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false
p pangram?("abcdefghijklmnopqrstuvwxyz") == true
p pangram?("abcdefGhijklmnOpqrstuVwxyz") == true
p pangram?("abcdefghijklmnopqrstuvwxy") == false
