def track_robot(steps)
  directions = ['north', 'east', 'south', 'west']
  current_direction = 'east'
  current_position = [0, 0]

  steps.split('').each do |step|
    case step
    when '<'
      current_index = directions.index(current_direction)
      current_index -= 1
      if current_index < 0
        current_index = 3
      end
      current_direction = directions[current_index] 
    when '>'
      current_index = directions.index(current_direction)
      current_index += 1
      if current_index > 3
        current_index = 0
      end
      current_direction = directions[current_index]
    else
      case current_direction
      when 'north'
        current_position[1] += 1
      when 'east'
        current_position[0] += 1
      when 'south'
        current_position[1] -= 1
      else
        current_position[0] -= 1
      end
    end
  end

  current_position
end

print track_robot('..<.<.')
print track_robot('')
print track_robot('<<.<.')
print track_robot('>..>.>...')