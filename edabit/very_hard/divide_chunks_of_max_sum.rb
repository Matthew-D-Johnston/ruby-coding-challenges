def divide(numbers, constraint)
  chunks = []
  chunk = []

  numbers.each_with_index do |num, idx|
    chunk.push(num)
    if chunk.reduce(:+) > constraint
      chunk.pop()
      chunks.push(chunk)
      chunk = []
      chunk.push(num)
    end

    if idx == numbers.length - 1
      chunks.push(chunk)
    end
  end

  chunks
end

print divide([1, 2, 3, 4, 1, 0, 2, 2], 5)
puts ""
print divide([1, 0, 1, 1, -1, 0, 0], 1)
puts ""
print divide([2, 1, 0, -1, 0, 0, 2, 1, 3], 3)
puts ""
