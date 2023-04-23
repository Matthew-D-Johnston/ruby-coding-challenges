##### Code Wars > 5 kyu

---

## First Non-Repeating Character

**Problem:**  

Write a function named `first_non_repeating_letter` that takes a string input, and returns the first character that is not repeated anywhere in the string.

For example, if given the input `'stress'`, the function should return `'t'`, since the letter *t* only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the **same character**, but the function should return the correct case for the initial letter. For example, the input `'sTreSS'` should return `'T'`.

If a string contains *all repeating characters*, it should return an empty string (`""`) or `None` -- see sample tests.

---

**Examples / Test Cases:**  

```ruby
first_non_repeating_letter('a') == 'a'
first_non_repeating_letter('stress') == 't'
first_non_repeating_letter('moonmen') == 'e'
```

---

**Data Structure:**  

**_Inputs_**

* A String object.

**_Outputs_**

* A String object representing the first character of the original input String that doesn't repeat.

**_Rules_**

* Uppercase and lowercase letters are treated as the same letter, but output should be case sensitive.
* If all characters repeat, then the output should be an empty String.

---

**Algorithm:**  

* Iterate over the string using `each_char`

---

**Code:**

```ruby
def first_non_repeating_letter(string)
  char_hash = Hash.new(0)

  string.each_char do |char|
    char_hash[char.downcase] = string.downcase.count(char.downcase)
  end

  non_repeat_index = char_hash.values.index(1)

  if non_repeat_index
    non_repeat_char = char_hash.keys[non_repeat_index]
    string[non_repeat_char] ? non_repeat_char : non_repeat_char.upcase
  else
    ''
  end
end
```

