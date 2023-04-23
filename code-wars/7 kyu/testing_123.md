### Testing 1-2-3

---

**Problem:**  

Write a function which takes a list of strings and returns each line prepended by the correct number.  

The numbering starts at 1. The format is `n: string`. Notice the colon and space in between.

---

**Examples / Test Cases:**  

```ruby
number [] # => []
number ["a", "b", "c"] # => ["1: a", "2: b", "3: c"]
```

---

**Data Structure:**

**_Inputs_**

* an array containing strings as elements.

**_Outputs_**

* an array containing the same strings as the original array but prepended but prepended by a number, starting with `1` and then incrementing by one for each successive element.

---

**Algorithm:**

* I need to iterate through the array while counting up from the number 1, prepending each successive number to each successive element.
* To prepend: n.to_s + array[n-1]

---

**Code:**  

```ruby
def number(lines)
  numbered_lines = []

  1.upto(lines.size) do |n|
    numbered_lines << "#{n}: #{lines[n-1]}"
  end

  numbered_lines
end 
```

