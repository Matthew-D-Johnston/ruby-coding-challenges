def array_of_multiples(num, length)
  arr = []
  mult = 1

  while arr.length() < length
    arr.push(num * mult)
    mult += 1
  end

  arr
end

print array_of_multiples(7, 5)
puts ""
print array_of_multiples(12, 10)
puts ""
print array_of_multiples(17, 6)
puts ""