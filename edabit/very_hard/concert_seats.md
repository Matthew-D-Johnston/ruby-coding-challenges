##### Edabit > Ruby > Very Hard

---

## Concert Seats

#### Problem

##### Instructions:

Create a function that determines whether each seat can "see" the front-stage. A number can "see" the front-stage if it is **strictly greater** than the number before it.

Everyone can see the front-stage in the example below:

```
# FRONT STAGE
[[1, 2, 3, 2, 1, 1],
[2, 4, 4, 3, 2, 2],
[5, 5, 5, 5, 4, 4],
[6, 6, 7, 6, 5, 5]]

# Starting from the left, the 6 > 5 > 2 > 1, so all numbers can see.
# 6 > 5 > 4 > 2 - so all numbers can see, etc.
```

Not everyone can see the front-stage in the example below:

```
# FRONT STAGE
[[1, 2, 3, 2, 1, 1], 
[2, 4, 4, 3, 2, 2], 
[5, 5, 5, 10, 4, 4], 
[6, 6, 7, 6, 5, 5]]

# The 10 is directly in front of the 6 and blocking its view.
```

The function should return `true` if **every number** can see the front-stage, and `false` if even a single number cannot.

_Notes_

- Numbers must be **strictly greater** than the number in front of it.
- All numbers within the arrays will be whole numbers greater than or equal to zero.

##### Definitions/Rules (explicit and implicit):

* Front Stage: an imaginary construct whereby the first subarray of an outer array represents seats closest to the front stage. Successive subarrays represent successive rows of seats.
* A seat is behind another seat if its subarray has an index greater than the other seat and its index within the subarray is the same as the other seat.
* Assume that all subarrays have the same length.
* All numbers will be greater than or equal to zero.
* For a seat not to be blocked, its number must be strictly greater than the number in front of it.

##### Input/Output:

* Input: an array containing subarrays that represent rows of seats.
* Output: `true` if every number can see the front-stage; `false` otherwise.

##### Mental Model:

Take the given array of subarrays. Loop over each row of seats, except the last row. For each row, check the number at the seat corresponding to the current index and index of current row. Then check the number at the seat corresponding to the current index and index of the next row. If the former is greater than or equal to the latter, return `false`. If after completing the loops and a `false` has not been returned, then return `true`.

---

#### Examples / Test Cases

```ruby
can_see_stage([
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]) ➞ true

can_see_stage([
  [0, 0, 0],
  [1, 1, 1],
  [2, 2, 2]
]) ➞ true

can_see_stage([
  [2, 0, 0], 
  [1, 1, 1], 
  [2, 2, 2]
]) ➞ false

can_see_stage([
  [1, 0, 0],
  [1, 1, 1],
  [2, 2, 2]
]) ➞ false

# Number must be strictly smaller than 
# the number directly behind it.
```

---

#### Data Structure

##### Input:

* An array of arrays containing numbers greater than or equal to zero.

##### Output:

* A boolean.

---

#### Algorithm

* Declare a `seat_index` variable and set it equal to `0`.
* Initiate a while loop that loops while the `seat_index` is less than the length of the subarrays (i.e. the first subarray).
* Declare a `row_index` variable and set it equal to `0`.
* Initiate another while loop that loops while the `row_index` is less than the length of the main array minus 1.
* Inside the second while loop, compare `main_array[row_index][seat_index]` with `main_array[row_index + 1][seat_index]`.
* If the former is greater than or equal to the latter, return `false`.
* Increment the `row_index` variable.
* Outside the second while loop but inside the first while loop, increment the `seat_index` variable.
* Outside both while loops, return `true`.

---

#### Code

```ruby
def can_see_stage(seats)
  seat_index = 0

  while seat_index < seats[0].length
    row_index = 0

    while row_index < (seats.length - 1)
      if seats[row_index][seat_index] >= seats[row_index + 1][seat_index]
        return false
      end

      row_index += 1
    end

    seat_index += 1
  end

  return true
end
```

