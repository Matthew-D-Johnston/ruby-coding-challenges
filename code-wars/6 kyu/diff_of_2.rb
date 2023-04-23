# diff_of_2.rb

def twos_difference(array)
  hsh = Hash.new(0)

  array.each_with_index do |num, idx|
    hsh[num] = array[(idx + 1)..(array.size - 1)]
  end

  results = []
  hsh.each do |key, value|
    value.each do |num|
      results << [key, num].sort if (key - num).abs == 2
    end
  end

  results.sort
end
