def unique_styles(styles_lists)
  styles = []

  styles_lists.each do |list|
    styles.concat(list.split(','))
  end

  return styles.uniq.length
end

puts unique_styles([
  "Dub,Dancehall",
  "Industrial,Heavy Metal",
  "Techno,Dubstep",
  "Synth-pop,Euro-Disco",
  "Industrial,Techno,Minimal"
])
puts unique_styles([
  "Soul",
  "House,Folk",
  "Trance,Downtempo,Big Beat,House",
  "Deep House",
  "Soul"
])
