##### Code Wars > 6 kyu

---

## Create Phone Number

**Problem:**  

Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.  

---

**Examples / Test Cases:**  

```ruby
create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# => "(123) 456-7890"
create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
# => "(111) 111-1111"
```

---

**Data Structure:**  

**_Inputs_**

* An Array with 10 elements, each of which are digit between 0-9.

**_Outputs_**

* A String representation of a phone number whose digits are those populating the elements of the input Array.

**_Rules_**

* Don't forget the space after the closing parentheses.

---

**Algorithm:**  

* We should be able to use string interpolation in conjunction with the `join` method, like this: `"(#{array[start_idx..end_idx].join}) #{array[start_idx..end_idx].join}-#{array[start_idx..end_idx].join}"`

---

**Code:**  

```ruby
def create_phone_number(digits)
  area_code = digits[0..2].join
  pn_start = digits[3..5].join
  pn_end = digits[6..9].join
  "(#{area_code}) #{pn_start}-#{pn_end}"
end
```

