def common_elements(arr1, arr2)
  elem = {}

  arr1.each do |el|
    elem[el] = true
  end

  common = []

  arr2.each do |el|
    if elem[el]
      common.push(el)
    end
  end

  common
end

print common_elements([-1, 3, 4, 6, 7, 9], [1, 3])
puts ""
print common_elements([1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10])
puts ""
print common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 4, 5])
puts ""
print common_elements([1, 2, 3, 4, 5], [10, 12, 13, 15])
puts ""