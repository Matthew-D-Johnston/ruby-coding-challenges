# break_camel_case.rb

def solution(string)
  chars = string.chars
  result = ""

  chars.each_with_index do |char, idx|
    result << char
    result << " " if chars[idx + 1] =~ /[A-Z]/
  end

  result
end

puts solution("camelCasing") == "camel Casing"
puts solution("camelCasingTest") == "camel Casing Test"
