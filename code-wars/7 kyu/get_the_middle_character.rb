# get_the_middle_character.rb

def get_middle(str)
  str_length = str.length
  midpoint = str_length / 2
  str_length.even? ? str[(midpoint - 1)..midpoint] : str[midpoint]
end

p get_middle("test") == "es"
p get_middle("testing") == "t"
p get_middle("middle") == "dd"
p get_middle("A") == "A"