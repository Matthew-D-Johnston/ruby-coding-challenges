def direction(east_arr)
  east_arr.map do |str|
    new_str = ''

    str.split('').each do |char|
      case char
      when 'e'
        new_str += 'w'
      when 'E'
        new_str += 'W'
      when 'a'
        new_str += 'e'
      when 'A'
        new_str += 'E'
      else
        new_str += char
      end
    end

    new_str
  end
end

print direction(["east", "EAST", "eastEAST"])
puts ""
print direction(["eAsT EaSt", "EaSt eAsT"])
puts ""
print direction(["east EAST", "e a s t", "E A S T"])
