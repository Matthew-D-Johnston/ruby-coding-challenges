# def repeated_string(str, int)
#   multiplier = int / str.length
#   number_of_as = str.split('').select { |char| char == 'a' }.length
#   number_of_as *= multiplier

#   if (int / str.length) == (int.to_f / str.length)
#     return number_of_as
#   else
#     if str[0] == 'a'
#       return number_of_as += 1
#     else
#       return number_of_as
#     end
#   end
# end

# refactored using regex

def repeated_string(str, int)
  multiplier = int / str.length
  number_of_as = str.scan(/a/).length
  number_of_as *= multiplier

  if (int / str.length) == (int.to_f / str.length)
    return number_of_as
  else
    if str[0] == 'a'
      return number_of_as += 1
    else
      return number_of_as
    end
  end
end

puts repeated_string("aba", 10)
puts repeated_string("a", 1000000000000)
puts repeated_string("aab",882787)
