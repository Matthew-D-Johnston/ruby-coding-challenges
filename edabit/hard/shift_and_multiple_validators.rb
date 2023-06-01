def is_shifted(arr1, arr2)
  shifts = [];

  idx = 0;

  while idx < arr1.length
    shift = arr1[idx] - arr2[idx]
    shifts.push(shift)

    idx += 1
  end

  if shifts.uniq.length == 1
    return true
  else
    return false
  end
end



def is_multiplied(arr1, arr2)
  prev_multiple = (arr2[0] * 1.0) / arr1[0]

  idx = 1

  while idx < arr1.length
    curr_multiple = (arr2[idx] * 1.0) / arr1[idx]

    if prev_multiple != curr_multiple
      return false
    end

    prev_multiple = curr_multiple
    idx += 1
  end

  return true
end

puts is_shifted([1, 2, 3], [2, 3, 4])
puts is_shifted([1, 2, 3], [-9, -8, -7])
puts is_multiplied([1, 2, 3], [10, 20, 30])