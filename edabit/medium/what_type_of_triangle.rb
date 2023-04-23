def get_triangle_type(arr)
  if arr.length == 3
    if arr.uniq.length == 3
      "scalene"
    elsif arr.uniq.length == 2
      "isosceles"
    else
      "equilateral"
    end
  else
    "not a triangle"
  end
end

puts get_triangle_type([2, 6, 5])
puts get_triangle_type([4, 4, 7])
puts get_triangle_type([8, 8, 8])
puts get_triangle_type([3, 5, 5, 2])
puts get_triangle_type([3, 5])