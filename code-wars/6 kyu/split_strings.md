##### Code Wars > 6 kyu

---

## Split Strings

**Problem:**  

Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

---

**Examples / Tests Cases:**  

```ruby
solution('abc') == ['ab', 'c_']
solution('abcdef') == ['ab', 'cd', 'ef']
```

---

**Data Structure:**  

**_Inputs_**

* A String object.

**_Outputs_**

* An Array object whose elements are String objects of length 2 representing the slicing up of the original String object input into character pairs.

**_Rules_**

* If the Input has contains an odd number of characters, then the final pair of characters should have an underscore replacing the last character.

---

**Algorithm:**  

* Initialize a `pairs` local variable and assign it to an empty array, `[]`.
* Add a line for the `str` input that will add an `'_'` if the string is an odd length: `str << '_' if str.length.odd?`
* Use an `until` loop with the condition `str.empty?`.
* Within the body of the loop use the `slice` method and shove the return value to the `pairs` array: `pairs << str.slice!(0..1)`

---

**Code:**

```ruby
def solution(str)
  pairs = []
  str << '_' if str.length.odd?
  until str.empty? { pairs << str.slice!(0..1) }
end
```

Code Wars isn't letting this one pass for some strange reasons. Others seem to have come across the same issue.

