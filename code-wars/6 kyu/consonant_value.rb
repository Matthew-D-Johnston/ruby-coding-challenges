# consonant_values.rb

def solve(s)
  substrings = s.split(/a|e|i|o|u/)
  substring_values = []
  
  substrings.each do |substring|
    substring_values << substring.chars.map { |char| char.ord - 96 }.sum
  end
  
  substring_values.max
end

p solve("zodiacs")
p solve("strength")