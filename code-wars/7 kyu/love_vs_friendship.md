### Love vs. Friendship

---

**Problem:**  

If `a = 1, b = 2, c = 3 . . . z = 26`  

Then `l + o + v + e = 54`  

and `f + r + i + e + n + d + s + h + i + p = 108`  

So `friendship` is twice stronger than `love` :-)  

The input will always be in lowercase and never be empty.

---

**Examples / Test Cases:**  

```ruby
words_to_marks("attitude") == 100
words_to_marks("friends") == 75
words_to_marks("family") == 66
words_to_marks("selfness") == 99
words_to_marks("knowledge") == 96
```

---

**Data Structure:**  

**_Inputs_**

* A String object, representing a word.

**_Outputs_**

* An Integer object.

**_Rules_**

* Input will always be lowercase and never empty.

---

**Algorithm:**

* Create an array containing each letter of the alphabet; if you add 1 to each index of the array then you will get the appropriate value for each letter.
* Split the input string into separate characters collected in an array.
* Iterate through the array of split characters, using each character to extract the index from the alphabet array and adding a 1 to the index value.
* Sum up the total values given for each character.

---

**Code:**

```ruby
def words_to_marks(string)
	alphabet = ('a'..'z').to_a
  result = 0
  
  string.chars.each { |char| result += (alphabet.index(char) + 1) }
  
  result
end
```

