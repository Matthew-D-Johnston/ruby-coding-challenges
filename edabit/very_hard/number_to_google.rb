def num_to_google(arr)
  result = ''

  arr.each do |elem|
    elem = elem.to_s

    ending_index = elem.index('0') || (elem.length - 1)
    current_index = 0

    current_string = ''

    while current_index <= ending_index do
      current_char = elem[current_index]

      case current_char
      when '0'
        ending_substring = elem[(current_index + 1)..(elem.length - 1)]
        repetitions = ending_substring.to_i
        current_string *= repetitions
      when '1'
        current_string += 'g'
      when '2'
        current_string += 'o'
      when '3'
        current_string += 'l'
      when '4'
        current_string += 'e'
      when '5'
        current_string[-1] = current_string[-1].upcase
      when '6'
        current_string += '.'
      when '7'
        if current_string[0] == current_string[0].upcase
          current_string[0] = current_string[0].downcase
        else
          current_string[0] = current_string[0].upcase
        end
      when '8'
        current_string = current_string.reverse
      when '9'
        current_string = ''
      end

      current_index += 1
    end

    result += current_string
  end

  result
end

puts num_to_google(["12213467"])
puts num_to_google(["12213467", "321"])
puts num_to_google(["12213467", "321", "122906"])
puts num_to_google(["15", "2502", "15", 3545])
puts num_to_google(["15", "2502", "15", 35, 45])
puts num_to_google([15, 202, 1, 3, 4])
