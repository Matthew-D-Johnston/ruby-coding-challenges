### Most Valuable Character (7 kyu)

---

**Problem:**  

In this Kata, you will be given a string and your task is to return the most valuable character. The value of a character is the difference between the index of its last occurrence and the index of its first occurrence. Return the character that has the highest value. If there is a tie, return the lexicographically lowest character.

---

**Examples / Test Cases:**  

```ruby
solve('a') = 'a'
solve('ab') = 'a'. Last occurrence is equal to first occurrence of each character. Return lexicographically lowest.
solve("axyzxyz") = 'x'
```

---

**Data Structure:**  

**_Inputs_**

* A string of characters.

**_Outputs_**

* A string containing a single character, which is the most valuable character.

---

**Algorithm:**  

* First, if there are only unique characters in the string then we can simply return the lexicographically lowest character. Thus, `if string.chars == string.chars.uniq` then `string.chars.sort.shift`.
* create a current value variable and give it the starting value of `nil`: `current value = nil`
* Iterate through the string: 1) get the index of each character and call it `idx_start`; 2) take that index, and call `string.index(char, idx_start + 1) = idx_next`; 3) `idx_end = idx_next if idx_next != nil`; 4) `string.index(char, idx_end + 1) = idx_next`; 5) `idx_end = idx_next if idx_next != nil`; `if (idx_start && idx_end) && ` then `current_value = idx_end - idx_start`

---

**Code: **  

```ruby
def solve(string)
  current_value = 0
  character_values = []

  string.chars.each_with_index do |char, index|
    idx_start = index
    idx_next = string.index(char, idx_start + 1)
  
    while idx_next != nil
      idx_end = idx_next
      idx_next = string.index(char, idx_end + 1)
    end
  
    current_value = idx_end - idx_start if idx_end != nil
    character_values << current_value
    current_value = 0
  end

  max_value = character_values.max
  most_valuable_characters = []
  character_values.each_with_index do |value, idx|
    most_valuable_characters << string.chars[idx] if value == max_value
  end

  most_valuable_characters.sort.shift
end
```

