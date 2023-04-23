def can_build(arr)
  idx = 0

  while idx < arr.length - 1
    current_string = arr[idx]
    next_string = arr[idx + 1]

    if current_string.length + 1 == next_string.length
      first_char = next_string[0]
      last_char = next_string[-1]

      if (first_char + current_string) != next_string && (current_string + last_char) != next_string
          return false
      end
    else
      return false
    end

    idx += 1
  end

  return true
end

puts can_build(["a", "at", "ate", "late", "plate", "plates"])
puts can_build(["a", "at", "ate", "late", "plate", "plater", "platter"])
puts can_build(["it", "bit", "bite", "biters"])
puts can_build(["mean", "meany"])
