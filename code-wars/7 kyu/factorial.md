##### Code Wars > 7 kyu

---

## Factorial

**Problem:**  

The task is to write a factorial function.

---

**Examples / Test Cases:**  

```ruby
factorial(0) == 1
factorial(1) == 1
factorial(4) == 24
factorial(7) == 5040
factorial(17) == 355687428096000
```

---

**Data Structure:**  

**_Inputs_**

* An integer.

**_Outputs_**

* An integer representing the factorial of the input integer.

---

**Algorithm:**

* The factorial of a number is that number multiplied by all successive integers that are less than it all the way down to the number 1.
* We can mimic this by employing the method `inject(:*)` on a range from `1` to the specified number.

---

**Code:**  

```ruby
def factorial(n)
  n == 0 ? 1 : (1..n).inject(:*)
end
```



