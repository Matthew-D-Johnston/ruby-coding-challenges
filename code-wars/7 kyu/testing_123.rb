# testing_123.rb

def number(lines)
  numbered_lines = []

  1.upto(lines.size) do |n|
    numbered_lines << "#{n}: #{lines[n-1]}"
  end

  numbered_lines
end 

p number(["a", "b", "c"])
p number([])
