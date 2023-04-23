def max_score(str)
  max_score = 0
  idx = 0

  while idx < str.length - 1
    left = str[0..idx]
    right = str[(idx + 1)..(str.length - 1)]
    score = left.count('0') + right.count('1')
    
    if score > max_score
      max_score = score
    end

    idx += 1
  end

  max_score
end

puts max_score('00111')
puts max_score('1111')
puts max_score('01001')
puts max_score('010101010101010101')
