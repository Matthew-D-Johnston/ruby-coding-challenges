def abacaba_pattern(num)
  alphabet = ('A'..'Z').to_a
  pattern = ''
  idx = 0

  while idx < num
    pattern = pattern + alphabet[idx] + pattern
    idx += 1
  end

  pattern
end

puts abacaba_pattern(1)
puts abacaba_pattern(2)
puts abacaba_pattern(3)
puts abacaba_pattern(4)
