def match_last_item(arr)
  last_element = arr.pop()
  concatenation = arr.join()
  return last_element == concatenation
end

puts match_last_item(["rsq", "6hi", "g", "rsq6hig"])
puts match_last_item([1, 1, 1, "11"])
puts match_last_item([8, "thunder", true, "8thundertrue"])
