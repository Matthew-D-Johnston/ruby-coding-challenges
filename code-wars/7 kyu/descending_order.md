### Descending Order

---

**Problem:**  

Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

---

**Examples / Test Cases:**  

Input: `21445`; Output: `54421`  

Input: `145263`; Output: `654321`  

Input: `1254859723`; Output: `9875543221`  

---

**Data Structure:**  

**_Inputs_**

* A non-negative integer.

**_Outputs_**

* An integer with each digit of the input integer organised in descending order, thus making the highest number possible out of the input digits.

---

**Algorithm:**  

* First, call the `to_s` method on the given integer in order to convert to a string.
* Second, separate the string into individual characters by calling the `chars` method.
* Third, sort the resulting array by ascending order by calling the `sort` method.
* Fourth, reverse the array order by calling the `reverse` method.
* Fifth, join each of the characters back into a single string by calling the `join` method.
* Sixth, convert back to an integer by calling the `to_i` method.
* Chain these methods together on one line.

---

**Code:**

```ruby
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end
```

