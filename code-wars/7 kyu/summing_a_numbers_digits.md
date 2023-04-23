##### Code Wars > 7 kyu

---

## Summing a number's digits

**Problem:**  

Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits.

---

**Examples / Test Cases:**  

```ruby
sum_digits(10) 	# Returns 1
sum_digits(99) 	# Returns 18
sum_digits(-32) # Return 5
```

---

**Data Structure:**  

**_Inputs_**

* An integer value, positive or negative.

**_Outputs_**

* An integer value, which is the sum of the absolute value of the individual digits of the input value.

---

**Algorithm:**  

* Take absolute value of integer input (`abs`).
* Take that value and convert to an array of digits (`digits`).
* Return the total sum of the digits in the array (`sum`).

---

**Code:**  

```ruby
def sum_digits(number)
  number.abs.digits.sum
end
```



