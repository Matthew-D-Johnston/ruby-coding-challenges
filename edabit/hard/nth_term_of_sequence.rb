def seq(ending_index)
  if ending_index == 0
    return 1
  end

  if ending_index == 1
    return 2
  end

  current_term = 2
  current_index = 1

  while current_index < ending_index
    current_term += 4 + 3 * (current_index - 1)
    current_index += 1
  end

  current_term
end

puts seq(0)
puts seq(1)
puts seq(2)
puts seq(6)
