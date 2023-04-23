##### Edabit > Ruby > Hard

---

## Match the Last Item

#### Problem

##### Instructions:

Create a function that takes an array of items and checks if the last item matches the rest of the array concatenated together.

_Notes_

The array is always filled with items.

##### Definitions/Rules (explicit and implicit):

* Check if last item matches the rest of the array concatenated together.
* Concatenation: every element except the last joined together as a string.
* There will always be items in the array. No empty arrays.

##### Input/Output:

* Input: An array of varying elements.
* Output: true or false depending on whether the last element matches the other elements strung together.

##### Mental Model:

Take the given array and pop off the last element. Join all the other elements together in a string and compare it to the last element.

---

#### Examples / Test Cases

```ruby
match_last_item(["rsq", "6hi", "g", "rsq6hig"])
# => true
# The last item is the rest joined.

match_last_item([1, 1, 1, "11"])
# => false
# The last item should be "111".

match_last_item([8, "thunder", true, "8thundertrue"])
# => true
```

---

#### Data Structures

##### Input:

* An array of at least 1 element of varying data structures (e.g. strings, numbers, booleans).

##### Output:

* A boolean: true or false.

---

#### Algorithm

* Take the given array and pop off the last element and store it in a variable called `last_element`
* Join the other elements together in a string and store as `concatenation`.
* Return the result of comparing `last_element` with `concatenation`.

---

#### Code

```ruby
def match_last_item(arr)
  last_element = arr.pop()
  concatenation = arr.join()
  return last_element == concatenation
end
```

