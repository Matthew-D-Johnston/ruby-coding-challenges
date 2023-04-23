##### Code Wars > 6 kyu

---

## Casino Chips

**Problem:**  

You are given three piles of casino chips: white, green and black chips:

* the first pile contains only white chips.
* the second pile contains only green chips.
* the third pile contains only black chips.

Each day you take exactly two chips of different colors and head to the casino. You can choose any colour, but you are not allowed to take two chips of the same colour in a day.  

You will be given an array representing the number of chips of each colour and your task is to return the maximum number of days you can pick the chips. Each day you need to take exactly two chips.  

---

**Examples / Test Cases:**  

```ruby
solve([1,1,1]) == 1
solve([1,2,1]) == 2
solve([4,1,1]) == 2
solve([8,2,8]) == 9
solve([8,1,4]) == 5
solve([7,4,10]) == 10
solve([12,12,12]) == 18
solve([1,23,2]) == 3
```

---

**Data Structure:**  

**_Inputs_**

* An array with three separate integer elements, which represent the number of each color of chip.

**_Outputs_**

* An integer representing the number of days that you can go to the casino before you no longer have the right amount of chips to continue going.

---

**Algorithm:**  

* Sort the array so that the largest number is first. There will be multiple iterations and the array will need to be sorted after each one.
* Check to ensure that at least two of the array elements are greater than zero.
* If so, subtract one from each of the first two elements.
* Increment the day counter by 1.

---

**Code:**  

```ruby
def solve(chips)
  day_counter = 0

  loop do
    break if chips.count(0) >= 2
    chips.sort!

    chips[2] -= 1
    chips[1] -= 1
    day_counter += 1
  end

  day_counter
end
```

This works, but it times out in Code Wars tests. 

---

**New Algorithm:**

* Extract the lowest number from the array using `min`.
* If the other two numbers are equal, then split the lowest number in half and subtract each half from the other two numbers while equating the lowest number with the total day count. Whatever is left for the other two chip piles, add the day count by one of those numbers to get the final day count.
* If the other two numbers are not equal, continually subtract one from each of the highest and lowest number until the highest number is reduced to the same size as the second highest number (the two are now equal). However much was subtracted, add that to the day count. Then, if there is still anything left of the smallest pile, divide it in half and subtract each half from the other two numbers. 

---

**New Code:**

```ruby
def solve(chips)
  small_pile = chips.min
  big_piles = chips.sort[1..2]
  days = 0

  if big_piles.first == big_piles.last
    small_pile.even? ? days += small_pile : days += (small_pile - 1)
    days += big_piles.first - (small_pile / 2)
  else
    big_piles_difference = big_piles.last - big_piles.first

    if big_piles_difference <= small_pile
      days += big_piles_difference
      small_pile -= big_piles_difference
      small_pile.even? ? days += small_pile : days += (small_pile - 1)
      days += big_piles.first - (small_pile / 2)
    else
      days += small_pile
      days += big_piles.first
    end
  end

  days
end
```

