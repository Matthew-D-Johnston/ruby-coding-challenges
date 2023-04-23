##### Edabit > Ruby > Hard

---

## The Nth Term of the Sequence

#### Problem

##### Instructions:

Write a function containing an expression, in terms of `n`, for the *n*th term of the sequence that has the following first six terms:

`2, 6, 13, 23, 36, 52` ...and the sequence continues.

_Notes_

The parameter `n` is always `>=` 0.

##### Definitions/Rules (explicit and implicit):

* Nth term: the nth term in the given sequence: `2, 6, 13, 23, 36, 52`
* The first term of the sequence is `2`; it then increments by 4.
* The second term is `6` (an increment of 4 from previous term).
* The third term is `13` (an increment of 7 from previous term and 3 from previous increment).
* The fourth term is `23` (an increment of 10 from previous term and 3 from previous increment).
* Thus, for `n >= 1`: the `increment` can be calculated by `4 + 3(n-1)`
* Starting on the third term, each successive increment is greater by 3 from the previous increment.
* Return the `nth` term of the sequence.

##### Input/Output:

* Input: a number indicating the index of the sequence.
* Output: the number at the `n` index of the sequence.

##### Mental Model:

Take the given index of the sequence. If the index is zero, return `1`. If the given index is `1` then return `2`. If the given index is greater than `1` then declare a `current_index` variable and set it equal to `1`. Then start a while loop then will continue looping while the `current_index` is less than or equal to the given index. 

---

#### Examples / Test Cases

```ruby
seq(1)
# => 2

seq(2)
# => 6

seq(6)
# => 52
```

---

#### Data Structures

##### Input:

* An integer.

##### Output:

* An integer.

---

#### Algorithm

* The given argument will be `ending_index`.
* If `ending_index == 0` then return `1`
* If `ending_index == 1` then return `2`
* Else...
* Set a `current_term` to equal `2`.
* Set `current_index` equal to `1`.
* While `current_index < ending_index` ...
* `current_term += 4 + 3 * (current_index - 1)`
* `current_index += 1`
* After loop finishes, return the `current_term`.

---

#### Code

```ruby
def seq(ending_index)
  if ending_index == 0
    return 1
  end

  if ending_index == 1
    return 2
  end

  current_term = 2
  current_index = 1

  while current_index < ending_index
    current_term += 4 + 3 * (current_index - 1)
    current_index += 1
  end

  current_term
end
```

