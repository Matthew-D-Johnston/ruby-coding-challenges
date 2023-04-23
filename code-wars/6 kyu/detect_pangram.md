##### Code Wars > 6 kyu

---

## Detect Pangram

**Problem:**  

A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).  

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

---

**Examples / Test Cases:**  

```ruby
pangram?("The quick brown fox jumps over the lazy dog") == true
pangram?("This is not a pangram.") == false
```

---

**Data Structure:**  

**_Inputs_**

* A String object.

**_Outputs_**

* A boolean value: `true` if the input contains every single letter of the alphabet at least once; otherwise, `false`.

**_Rules_**

* Ignore numbers and punctuation.

---

**Algorithm:**

* We can construct an Array object containing every single letter of the alphabet, then call the `map` method on that object.
* Within the block that we pass to the `map` method, we shall call the `include?` method on the String object input, passing each element (i.e. letter) of the Array object as an argument to the `include?` method. 
* The return value of `map` will thus be an Array object whose elements are boolean values. If there is a single `false` contained within that array, then the String object input is not a pangram, and the method should return false.
* We will need to ensure that we check both uppercase and lower case letters.
* We can use the `all` method to check the final Array object returned by our `map` method.

---

**Code:**  

```ruby
def pangram?(string)
  letters = ('a'..'z').to_a
  booleans = letters.map do |letter|
    string.include?(letter) || string.include?(letter.upcase)
  end
  
  booleans.all?
end
```

