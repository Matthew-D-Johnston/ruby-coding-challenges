##### Edabit > Ruby > Hard

---

## Break Point

#### Problem

##### Instructions:

A number has a **breakpoint** if it can be split in a way where the digits on the left side and the digits on the right side sum to the same number.  

For instance, the number *35190* can be sliced between the digits *351* and *90*, since *3 + 5 + 1 = 9* and *9 + 0 = 9*. On the other hand, the number *555* does **not** have a **breakpoint** (you must split **between** digits).  

Create a function that returns `true` if a number has a breakpoint, and `false` otherwise.

_Notes_

- Read each digit as only one number.
- Check the **Resources** tab for a hint.

##### Definitions/Rules (explicit and implicit):

* Existence of a breakpoint: the number can be split in a way where the digits on the left side and the digits on the right side sum to the same number.
* Each digit represents a single number.

##### Input/Output:

* Input: a number.
* Output: a boolean, true if the number has a breakpoint and false otherwise.

##### Mental Model:

Take the given number. Split it into individual digits. Iterate over each digit. For each digit extract all digits that come before it, including that digit. Then extract all digits after that digit, excluding that digit. Sum the digits before and compare the sum to the sum of the digits after it. If at any point during the iteration over the digits the two sides sum to the same value, return `true`. If at no point do the two sides sum to the same value, then return `false` after the complete iteration is complete.

---

#### Examples / Test Cases

```ruby
break_point(159780)
# => true

break_point(112)
# => true

break_point(1034)
# => true

break_point(10)
# => false

break_point(343)
# => false
```

---

#### Data Structures

##### Input:

* An integer.

##### Output:

* A boolean.

---

#### Algorithm

* Take the given number, convert to a string, and split into individual string digits.
* Then map over each digit and convert to an integer.
* Iterate over each integer
* Given the current index of the iteration, extract all the digits up to and including the digit at the current index.
* Then extract all the digits following the digit of the current index up to the end of the array.
* Sum each subset of extracted digits.
* Compare the sums. If they are equal, return `true`.
* If the iteration completes and `true` was not returned, then return `false`.

---

#### Code

Solution 1

```ruby
def break_point(num)
  digits = num.to_s.split('').map { |digit| digit.to_i }
  
  digits.each_with_index do |_, index|
    left_side_sum = digits[0..index].sum()
    right_side_sum = digits[(index + 1)..(digits.length - 1)].sum()

    if left_side_sum == right_side_sum
      return true
    end
  end

  return false
end
```

Edabit said that the `sum()` method was undefined.

Solution 2

```ruby
def break_point(num)
  digits = num.to_s.split('').map { |digit| digit.to_i }
  
  digits.each_with_index do |_, index|
    left_side_sum = digits[0..index].reduce(:+)
    right_side_sum = digits[(index + 1)..(digits.length - 1)].reduce(:+)

    if left_side_sum == right_side_sum
      return true
    end
  end

  return false
end
```

This solution, using the `reduce()` method, worked.