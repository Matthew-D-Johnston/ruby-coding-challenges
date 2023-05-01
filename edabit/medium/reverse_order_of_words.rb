def reverse(text)
  words = text.split(" ")
  reverse_words = words.map do |word|
    if word.length >= 5
      word = word.reverse()
    end

    word
  end

  return reverse_words.join(" ")
end

puts reverse("Reverse")
puts reverse("This is a typical sentence.")
puts reverse("The dog is big.")
