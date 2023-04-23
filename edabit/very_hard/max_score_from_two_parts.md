##### Edabit > Ruby > Very Hard

---

## Maximum Score From Two Parts of a String

#### Problem

##### Instructions:

Given a string `s` formed from zeros and ones, return the maximum score after splitting the string into two **non-empty** substrings (`left` and `right`).

The score after splitting a string is the number of zeros in the `left` substring plus the number of ones in the `right` substring.

##### Definitions/Rules (explicit and implicit):

* Maximum score: depending on where the string is split, the score will vary. Choose to split the string where the score is maximized.
* String must be split into two non-empty substrings.
* Score: the sum of the number of zeros in the left substring and the number of ones in the right substring.

##### Input/Output:

* Input: a string of ones and zeros.
* Output: the maximum score.

##### Mental Model:

Take the given string of ones and zeros. Iterate over the string. On each iteration, take the current index and create two substrings, a left substring and a right substring. Count the number of zeros in the left substring and the number of ones in the right substring. Sum the two counts and store in a score variable. If it is greater than the max score then save that score as the max score. Continue until all possible substring combinations have been tested. Return the max score. 

---

#### Examples / Test Cases

```ruby
max_score("00111")
# => 5
# left = "00", right = "111" ➞ 2 + 3 ➞ 5

max_score("1111")
# => 3

max_score("01001")
# => 4

max_score("010101010101010101")
# => 10
```

---

#### Data Structures

##### Input:

* A string.

##### Output:

* An integer.

---

#### Algorithm

* Declare a `max_score` variable and set it to `0`.
* Declare an `index` variable and set it to `0`.
* Initiate a `while` loop with the condition `index < string.length - 1`.
* Inside the `while` loop declare a `left` variable and set it to `string[0..index]`.
* Declare a `right` variable and set it equal to `string[index+1..string.length-1]`
* Declare a `score` variable and set it equal to `left.count('0') + right.count('1')`
* If the `score > max_score` then set `max_score = score`.
* Increment the `index` variable by `1`.
* After the `while` loop finshes looping, return the `max_score` variable.

---

#### Code

```ruby
def max_score(str)
  max_score = 0
  idx = 0

  while idx < str.length - 1
    left = str[0..idx]
    right = str[(idx + 1)..(str.length - 1)]
    score = left.count('0') + right.count('1')
    
    if score > max_score
      max_score = score
    end

    idx += 1
  end

  max_score
end
```

