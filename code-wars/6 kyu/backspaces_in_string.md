##### Code Wars > 6 kyu

---

## Backspaces in String

**Problem:**  

Assume `"#"` is like a backspace in string. This means that string `"a#bc#d"` actually is `"bd"`.  

Your task is to process a string with `"#"` symbols.

---

**Examples / Test Cases:**  

```ruby
clean_string("abc#d##c") == "ac"
clean_string("abc##d######") == ""
clean_string("#######") == ""
clean_string("") == ""
```

---

**Data Structure:**  

**_Inputs_**

* A String object.

**_Outputs_**

* A String object representing the original input but with all `"#"` characters and the characters that precede them removed.

---

**Algorithm:**

* We will want to split the input string into individual characters using the `chars` method.
* With the resulting array we will iterate over the individual elements.
* Whenever we come across a `#` character we will want to replace it and the character that precedes it with `nil`.
* We will need a special case to deal with a `#` on the first element, otherwise we may end up with an index error.



---

**Code:**

```ruby
def clean_string(string)
  characters = string.chars
  total_backspaces = characters.count('#')

  total_backspaces.times do
    backspace_idx = characters.index('#')
    characters.delete_at(backspace_idx)
    characters.delete_at(backspace_idx - 1) unless backspace_idx == 0
  end

  characters.join
end
```

