##### Code Wars > 6 kyu

---

## Consonant Value

**Problem:**

Given a lowercase string that has alphabetic characters only and no spaces, return the highest value of consonant substrings. Consonants are any letters of the alpahabet except `"aeiou"`.  

We shall assign the following values: `a = 1, b = 2, c = 3, .... z = 26`.  

For example, for the word "zodiacs", let's cross out the vowels. We get: "z **~~o~~** d **~~ia~~** cs"  

---

**Example / Test Cases:**  

```ruby
-- The consonant substrings are: "z", "d" and "cs" and the values are z = 26, d = 4 and cs = 3 + 19 = 22. The highest is 26.
solve("zodiacs") = 26

For the word "strength", solve("strength") = 57
-- The consonant substrings are: "str" and "ngth" with values "str" = 19 + 20 + 18 = 57 and "ngth" = 14 + 7 + 20 + 8 = 49. The highest is 57.
```

---

**Data Structure:**

**_Inputs_**

* A String object: all lowercase alphabetic characters and no spaces.

**_Outputs_**

* An Integer object: represents the value of the highest consonant substring (see description above).

---

**Algorithm:**  

* The method will `split` the given string into an array whose elements consist of consonant substrings: `split(/a|e|i|o|u/)`.
* Then we need to iterate over the substrings, tally up the values of each letter of a particular substring, and return the highest value out of all substrings. 

---

**Code:**  

```ruby
def solve(s)
  substrings = s.split(/a|e|i|o|u/)
  substring_values = []
  
  substrings.each do |substring|
    substring_values << substring.chars.map { |char| char.ord - 96 }.sum
  end
  
  substring_values.max
end
```

