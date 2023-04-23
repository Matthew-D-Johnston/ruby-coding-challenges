# dead_fish.rb

def parse(string)
  the_value = 0
  values = []

  string.each_char do |char|
    case char
    when 'i' then the_value += 1
    when 'd' then the_value -= 1
    when 's' then the_value **= 2
    when 'o' then values << the_value
    end
  end

  values
end
