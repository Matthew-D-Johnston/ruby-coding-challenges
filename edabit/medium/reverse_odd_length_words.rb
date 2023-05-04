def reverse_odd(text)
  words = text.split(" ")

  reversed_words = words.map do |word|
    if word.length % 2 == 0
      word
    else
      word.reverse
    end
  end

  reversed_words.join(" ")
end

puts reverse_odd("Bananas")
puts reverse_odd("One two three four")
puts reverse_odd("Make sure uoy only esrever sdrow of ddo length")

