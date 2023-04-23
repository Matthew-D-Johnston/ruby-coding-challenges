def can_see_stage(seats)
  seat_index = 0

  while seat_index < seats[0].length
    row_index = 0

    while row_index < (seats.length - 1)
      if seats[row_index][seat_index] >= seats[row_index + 1][seat_index]
        return false
      end

      row_index += 1
    end

    seat_index += 1
  end

  return true
end

puts can_see_stage([
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
])
puts can_see_stage([
  [0, 0, 0],
  [1, 1, 1],
  [2, 2, 2]
])

puts can_see_stage([
  [2, 0, 0], 
  [1, 1, 1], 
  [2, 2, 2]
])

puts can_see_stage([
  [1, 0, 0],
  [1, 1, 1],
  [2, 2, 2]
])
