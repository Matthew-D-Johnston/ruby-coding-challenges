##### Edabit > Ruby > Very Hard

---

## Building up a Word

#### Problem

##### Instructions:

You are given an input array of strings, ordered by ascending length.

Write a function that returns `true` if, for each pair of consecutive strings, the second string can be formed from the first by adding a **single letter** either at the **beginning or end**.

_Notes_

- Return `false` if a word is **NOT** formed by adding **only one letter**.
- Return `false` if the letter is added to the **middle** of the previous word.
- Letters in tests will all be **lower case**.

##### Definitions/Rules (explicit and implicit):

* Array of strings is ordered by length in ascending order.
* Pair of consecutive strings: two strings side-by-side in the array.
* Check if, for each pair, the second string can be formed from the first by adding a single letter either at the beginning or end of the string.
* The letters in the tests will all be lower case.

##### Input/Output:

* Input: an array of strings.
* Output: `true` if all consecutive pairs of strings meet the criterion whereby the second string can be formed from the first string by adding a single letter, either at the beginning or the end of the string.

##### Mental Model:

Take the given array of strings. Iterate over each element of the array. Check if the if the length of the current element is one less than the length of the next element. If not, return false. If so, take the first and last letter of the next element and store them in separate variables. Check to see if adding the first letter to the front of the current element equates it with the next element. Also check to see if adding the last letter to the end of the current element equates it with the next element. If neither is true, then return false. If after completely iterating through the array no `false` has been returned, then return true.

---

#### Examples / Test Cases

```ruby
can_build(["a", "at", "ate", "late", "plate", "plates"]) ➞ true

can_build(["a", "at", "ate", "late", "plate", "plater", "platter"]) ➞ false
# "platter" is formed by adding "t" in the middle of "plater"

can_build(["it", "bit", "bite", "biters"]) ➞ false
# "biters" is formed by adding two letters - we can only add one

can_build(["mean", "meany"]) ➞ true
```

---

#### Data Structures

##### Input:

* An array of strings.

##### Output:

* A boolean.

---

#### Algorithm

* Declare an `idx` variable and set it equal to `0`.
* Initiate a `while` loop with the condition that `idx < array.length - 1`
* Inside the loop, declare a `current_string` variable and set it equal to `array[idx]` and declare a `next_string` variable and set it equal to `array[idx + 1]`.
* Check to see if `current_string.length + 1 == next_string.length`
  * If so:
  * declare a `first_char` variable and set it equal to `next_string[0]`
  * declare a `last_char` variable and set it equal to `next_string[-1]`
  * Check the condition `(first_char + current_string) != next_string && (current_string + last_char) != next_string`
    * if both conditions return `true`, the whole expression will return `true`, and thus we want to return `false`.
  * if the lengths are not equal, return `false`
* Increment the `idx` variable by `1`.
* If the `while` loop completes without returning `false`, return `true`.

---

#### Code

```ruby
def can_build(arr)
  idx = 0

  while idx < arr.length - 1
    current_string = arr[idx]
    next_string = arr[idx + 1]

    if current_string.length + 1 == next_string.length
      first_char = next_string[0]
      last_char = next_string[-1]

      if (first_char + current_string) != next_string && (current_string + last_char) != next_string
          return false
      end
    else
      return false
    end

    idx += 1
  end

  return true
end
```

