##### Code Wars > 7 kyu

---

## Get the Middle Character

**Problem:**  

You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.  

---

**Examples / Test Cases:**  

```ruby
get_middle("test") == "es"
get_middle("testing") == "t"
get_middle("middle") == "dd"
get_middle("A") == "A"
```

---

**Data Structure:**  

**_Inputs_**

* A string representation of a word with length `0 < str < 1000`. You do not need to test for this. This is only here to tell you that you do not need to worry about your solution timing out.

**_Outputs_**

* The middle character(s) of the word represented as a string.

---

**Algorithm:**  

* Get string length and assign to variable `str_length`.
* Divide `str_length` by `2` and assign to variable `midpoint`.
* Check whether length of string is even or odd.
* `if` even, then `str[midpoint..(midpoint + 1)]`.
* `else`, `str[midpoint]`.

---

**Code:**  

```ruby
def get_middle(str)
  str_length = str.length
  midpoint = str_length / 2
  str_length.even? ? str[(midpoint - 1)..midpoint] : str[midpoint]
end
```

