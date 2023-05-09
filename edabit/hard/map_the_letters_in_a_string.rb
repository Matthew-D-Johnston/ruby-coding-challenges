def map_letters(text)
  char_indexes = {}

  idx = 0

  while idx < text.length do
    symbol = text[idx].to_sym

    if char_indexes[symbol] == nil
      char_indexes[symbol] = []
    end

    char_indexes[symbol].push(idx)

    idx += 1
  end

  char_indexes
end

puts map_letters("dodo")
puts map_letters("froggy")
puts map_letters("grapes")
