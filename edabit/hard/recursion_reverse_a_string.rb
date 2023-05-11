def reverse(text)
  recursive_reverse(text, "")
end

def recursive_reverse(text, rev)
  if text.length <= 1
    rev += text
    return rev
  end

  rev += text[text.length - 1]

  recursive_reverse(text.slice(0, text.length - 1), rev)
end

puts reverse("hello")
puts reverse("world")
puts reverse("a")
puts reverse("")