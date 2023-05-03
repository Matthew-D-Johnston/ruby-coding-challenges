def oldest(people)
  oldest_person = ""
  oldest_age = 0

  people.keys.each do |person|
    if people[person] > oldest_age
      oldest_age = people[person]
      oldest_person = person
    end
  end

  oldest_person
end

puts oldest({
  "Emma" => 71,
  "Jack" => 45,
  "Amy" => 15,
  "Ben" => 29
})

puts oldest({
  "Max" => 9,
  "Josh" => 13,
  "Sam" => 48,
  "Anne" => 33
})
