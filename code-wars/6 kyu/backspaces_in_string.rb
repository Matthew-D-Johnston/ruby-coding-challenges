# backspaces_in_string.rb

def clean_string(string)
  characters = string.chars
  total_backspaces = characters.count('#')

  total_backspaces.times do
    backspace_idx = characters.index('#')
    characters.delete_at(backspace_idx)
    characters.delete_at(backspace_idx - 1) unless backspace_idx == 0
  end

  characters.join
end

p clean_string("abc#d##c") == "ac"
p clean_string("a#bc#d") == "bd"
p clean_string("abc##d#######") == ""
p clean_string("#######") == ""
p clean_string("") == ""
