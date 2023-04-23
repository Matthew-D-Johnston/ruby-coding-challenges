##### Edabit > Ruby > Very Hard

---

## Number to Google

#### Problem

##### Instructions:

* Create a function that takes an array and returns a string.
  - **0** Repeat the actual decrypted value (using like this : 014 to repeat 14 times).
    - *Warning: When you start a repeat you can't stop it to add other numbers.*
  - **1, 2, 3, 4** = g, o, l, e
  - **5** Corresponding to up case of letter before this.
  - **6** Add a point to the end.
  - **7** Change case of the first letter.
  - **8** Reverse the string.
  - **9** Clear the actual decrypted string.

##### Definitions/Rules (explicit and implicit):

* 

##### Input/Output:

* Input: an array of strings representing numbers or actual numbers.
* Output: a decrypted string.

##### Mental Model:

Take the given array and iterate over each seperate element. For each element iterate over each character. Decrypt the character and add the decrypted value to a current string or perform the decrypted operation. When a particular element is completed, add the current string value to the final result string.

---

#### Examples / Test Cases

```ruby
num_to_google(["12213467"]) ➞ "Google."

num_to_google(["12213467", "321"]) ➞ "Google.log"

num_to_google(["12213467", "321", "122906"]) ➞ "Google.log"

num_to_google(["15", "2502", "15", 3545]) ➞ "GOOGLE"

num_to_google(["15", "2502", "15", 35, 45]) ➞ "GOOGLE"

num_to_google([15, 202, 1, 3, 4]) ➞ "Google"
```

---

#### Data Structures

##### Input:

* An array of strings or numbers.

##### Output:

* A string.

---

#### Algorithm

* Declare a `result` variable and assign to an empty string, `''`.
* Start an `each` loop on the given `arr`.
* Declare a `current_string` variable and set it to an empty string.
* Make sure the current element of the loop is a string by assigning it the value of `elem.to_s`
* Declare an `ending_idx` variable and set it equal to `elem.index('0')`.
* Check to see if `ending_idx` is a falsy variable. If it is, then set the `ending_index` variable to the length of `elem` minus `1`.
* Declare a `current_index` variable and set it to `0`.
* Start a `while` loop with the condition `while current_index <= ending_index`
* Declare a `current_char` variable and set it equal to the character of the `elem` at the `current_index`.
* Initiate a `case` statement for `current_char`
  * when `0`
    * declare `ending_substring` and set it equal to `elem[(index + 1)..(elem.length -1)]`
    * Set `ending_substring` to an integer value. Store as `repetitions` variable.
    * set `current_string = current_string * repetitions`
  * when `1`
    * Append `'g'` to the `current_string`
  * when `2`
    * Append `'o'` to the `current_string`
  * When `3`
    * Append `'l'` to the `current_string`
  * When `4`
    * Append `'e'` to the `current_string`
  * when `5`
    * change the last character in the `current_string` to upper case
    * `current_string[-1] = current_string[-1].upcase`
  * when `6`
    * append `'.'` to the `current_string`
  * when `7`
    * change the case of the first letter
    * if `current_string[0] == current_string[0].upcase` then `current_string[0] = current_string[0].downcase` else `current_string[0] = current_string[0].upcase`
  * when `8`
    * reverse the `current_string`
  * When `9`
    * set the `current_string` to an empty string `''`.
* On completion of the `while` loop, append the `current_string` to the `result` string.
* On completion of the `each` loop, return the `result` string.

---

#### Code

```ruby
def num_to_google(arr)
  result = ''

  arr.each do |elem|
    elem = elem.to_s

    ending_index = elem.index('0') || (elem.length - 1)
    current_index = 0

    current_string = ''

    while current_index <= ending_index do
      current_char = elem[current_index]

      case current_char
      when '0'
        ending_substring = elem[(current_index + 1)..(elem.length - 1)]
        repetitions = ending_substring.to_i
        current_string *= repetitions
      when '1'
        current_string += 'g'
      when '2'
        current_string += 'o'
      when '3'
        current_string += 'l'
      when '4'
        current_string += 'e'
      when '5'
        current_string[-1] = current_string[-1].upcase
      when '6'
        current_string += '.'
      when '7'
        if current_string[0] == current_string[0].upcase
          current_string[0] = current_string[0].downcase
        else
          current_string[0] = current_string[0].upcase
        end
      when '8'
        current_string = current_string.reverse
      when '9'
        current_string = ''
      end

      current_index += 1
    end

    result += current_string
  end

  result
end
```

