##### Edabit > Ruby > Very Hard

---

## ABACABA Pattern

#### Problem

##### Instructions:

The ABACABA pattern is a recursive fractal pattern that shows up in many places in the real world (such as in geometry, art, music, poetry, number systems, literature and higher dimensions).

Create a function that takes a number `n` as an argument and returns a `string` that represents the full pattern.

##### Definitions/Rules (explicit and implicit):

* 



##### Input/Output:

* Input: a number corresponding to the level of the ABACABA pattern, which also corresponds to the letter of the alphabet at that number.
* Output: the ABACABA pattern corresponding to that number.

##### Mental Model:

Take the given number. Create a pattern variable that starts off as an empty string. While the given number is greater than zero, pull the letter from the index. Add it to the pattern and then add the pattern.

---

#### Examples / Test Cases

```ruby
abacaba_pattern(1) ➞ "A"

abacaba_pattern(2) ➞ "ABA"

abacaba_pattern(3) ➞ "ABACABA"
```

---

#### Data Structures

##### Input:

* A number.

##### Output:

* A string.

---

#### Algorithm

* Declare a `pattern` variable and set it equal to an empty string, `''`.
* Declare an `ALPHABET` constant and set it equal to an array of every letter of the alphabet in uppercase.
* Initiate a `while` loop whose condition is `while number > 0`.
* Inside the loop, declare an `idx` variable and set it equal to the `number - 1`.
* Set the `pattern` variable equal to `pattern + ALPHABET[idx] + pattern`.
* Set the `number` equal to the `idx`.
* After the loop finishes, return the `pattern` variable.

---

#### Code

```ruby
def abacaba_pattern(num)
  alphabet = ('A'..'Z').to_a
  pattern = ''
  idx = 0

  while idx < num
    pattern = pattern + alphabet[idx] + pattern
    idx += 1
  end

  pattern
end
```

