# more_zeros_than_ones.rb

def more_zeros(string)
  array = string.chars.uniq
  array.select do |char|
    bin = char.ord.to_s(2)
    bin.count('0') > bin.count('1')
  end
end
