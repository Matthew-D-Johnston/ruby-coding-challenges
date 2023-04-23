# look_and_say_numbers.rb


def look_and_say(data='1', maxlen=5)
  say_what_you_see = []
  
  maxlen.times do
    digit = data[0]
    pattern_counter = 1
    patterns = []

    if data == '1'
      patterns << '11'
    else
      1.upto(data.size - 1) do |idx|
        if digit == data[idx]
          pattern_counter += 1
        else
          patterns << pattern_counter.to_s + digit
          digit = data[idx]
          pattern_counter = 1
        end

        patterns << pattern_counter.to_s + digit if idx == (data.size - 1)
      end
    end

    data = patterns.join
    say_what_you_see << data
  end

  say_what_you_see
end


puts look_and_say('1211', 4) == ['111221', '312211', '13112221', '1113213211']
puts '------'
puts look_and_say('1')
puts '------'
puts look_and_say('132', 8) == ['111312', '31131112', '1321133112', '11131221232112', '31131122111213122112', '13211321223112111311222112', '1113122113121122132112311321322112', '311311222113111221221113122112132113121113222112']