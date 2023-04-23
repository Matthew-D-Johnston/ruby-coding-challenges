# most_valuable_character.rb

def solve(string)
  current_value = 0
  character_values = []

  string.chars.each_with_index do |char, index|
    idx_start = index
    idx_next = string.index(char, idx_start + 1)
  
    while idx_next != nil
      idx_end = idx_next
      idx_next = string.index(char, idx_end + 1)
    end
  
    current_value = idx_end - idx_start if idx_end != nil
    character_values << current_value
    current_value = 0
  end

  max_value = character_values.max
  most_valuable_characters = []
  character_values.each_with_index do |value, idx|
    most_valuable_characters << string.chars[idx] if value == max_value
  end

  most_valuable_characters.sort.shift
end

p solve('abceajfdsae')
p solve('a')
p solve('ab')
p solve('axyzxyz')
p solve('aabccc')
