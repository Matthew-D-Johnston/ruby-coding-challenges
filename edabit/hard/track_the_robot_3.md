##### Edabit > Ruby > Hard

---

## Track the Robot (Part 3)

#### Problem

##### Instructions:

A robot moves around a 2D grid. At the start, it is at `[0, 0]`, facing east. It is controlled by a sequence of instructions:

- `.` means take one step forwards in the current direction.
- `<` means turn 90 degrees anticlockwise.
- `>` means turn 90 degrees clockwise.

Your job is to process the instructions and return the final position of the robot.

### Example

For example, if the robot is given the sequence of instructions `..<.<.`, then:

- Step 1: `.` It still faces east, and is at `[1, 0]`.
- Step 2: `.` It still faces east, and is at `[2, 0]`.
- Step 3: `<` It now faces north, and is still at `[2, 0]`.
- Step 4: `.` It still faces north, and is at `[2, 1]`.
- Step 5: `<` It now faces west, and is still at `[2, 1]`.
- Step 6: `.` It still faces west, and is now at `[1, 1]`.

So, `track_robot("..<.<.")` returns `[1, 1]`.

_Notes_

- The instruction strings will only contain the three valid characters `.`, `<` or `>`.
- You will always be passed a string (but the string might be empty).

##### Definitions/Rules (explicit and implicit):

* Start location: `[0, 0]`
* Start direction: east
* First location element is the east-west axis with east as the positive direction and west as the negative direction.
* Second location element is the north-south axis with north as the positive direction and south as the negative direction.
* `.` = take one step forward in current direction.
* `<` = turn 90 degrees counter clockwise.
* `>` = turn 90 degrees clockwise.
* Instructions passed as a string. String may be empty.
* Return the final position of the robot after it is has moved according to the instruction sequence.

##### Input/Output:

* Input: a sequence of instructions, comprised of `.`, `<`, or `>`.
* Output: the final location/position of the robot.

##### Mental Model:

Declare a direction position and set it to the initial direction: `'east'`. Declare a current position and set it to the initial position: `[0, 0]`. Create an array containing all directions. Iterate over the instruction sequence. If `.`, move in the current direction. East will move along the east-west axis in the positive direction while west will move along the east-west axis in the negative direction. North will move along the north-south axis in the positive direction while south will move along the north-south axis in the negative direction. `<` makes the robot turn in the counter clockwise position. Take the current direction and find the index in the direction array. Then subtract one to find the new index. If the index is less than 0 then make the new index equal to 3. Then obtain the position at the given index for the new current position. For `>`, find the index at the current direction and then add one. If it is greater than 3, then make the index 0. Obtain the new direction given the new index. 

---

#### Examples / Test Cases

```ruby
track_robot('..<.<.')
# => [1, 1]
track_robot('')
# => [0, 0]
track_robot('<<.<.')
# => [-1, -1]
track_robot('>..>.>...')
# => [-1, 1]
```

---

#### Data Structures

##### Input:

* A string

##### Output:

* An array containing two integers.

---

#### Algorithm

* declare a variable called `directions` and set it to an array containing each of the four directions.
* declare a variable called `current_direction` and set it to `'east'`
* declare a variable called `current_position` and set it to `[0, 0]`
* Split the instruction sequence into individual characters and iterate over the characters.
* Create a `case` statement with three cases: `<`, `>`, and `.`.
* 



---

#### Code

```ruby
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
```

