##### Code Wars > 7 kyu

---

## Substring Fun

**Problem:**  

Complete the function that takes an array of words.  

You must concatenate the `n`th letter from each word to construct a new word which should be returned as a string, where `n` is the position of the word in the list.  

Note: Test cases contain valid input only--i.e. a string array or an empty array; and each word will have enough letters.

---

**Examples / Test Cases:**  

```ruby
nth_char(['yoda', 'best', 'has']) == 'yes'
nth_char([]) == ''
nth_char(['X-ray']) == 'X'
nth_char(['No', 'No']) == 'No'
nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'
```

---

**Data Structure:**  

**_Inputs_**

* An array whose elements are string representations of individual words.

**_Outputs_**

* A string whose individual characters are taken from the nth position of the total words given.

---

**Algorithm:**

* The total length of the output string will be the same length of the array, that is the total number of words.
* We can loop using some counting method like `0.upto(array.size - 1) do |n|`.
* For each `n`, we will need to get the `n` index of the array and then the `n` index of the string, and shift that character onto a previously created string object.
* That string object will be the final return value of our method.

---

**Code:**

```ruby
def nth_char(words)
  final_word = ''

  0.upto(words.size - 1) do |n|
    final_word << words[n][n]
  end

  final_word
end
```

