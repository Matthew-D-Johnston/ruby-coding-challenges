def full_key_name(str)
  words = str.split(" ")
  note = words[words.length - 1]
  
  if note[0].upcase() == note[0]
    words.push("major")
  else
    words[words.length - 1] = note.capitalize()
    words.push("minor")
  end

  return words.join(" ")
end

puts full_key_name("Prelude in C")
puts full_key_name("Fugue in c")
puts full_key_name("Toccata and Fugue in d")
puts full_key_name("Sonata in eb")