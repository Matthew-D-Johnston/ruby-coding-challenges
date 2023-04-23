##### Code Wars > 7 kyu

---

## Maximum Multiple

**Problem:**  

Given a divisor and a bound, find the largest integer, N, such that the following conditions are met:

* N is divisible by divisor
* N is less than or equal to bound
* N is greater than 0.

---

**Examples / Test Cases:**  

```ruby
max_multiple(2, 7) == 6
max_multiple(3, 10) == 9
max_multiple(7, 17) == 14
max_multiple(10, 50) == 50
max_multiple(37, 200) == 185
max_multiple(7, 100) == 98
```

---

**Data Structure:**  

**_Inputs_**

* Two arguments: 1) an integer representing the divisor; and 2) an integer representing the upper bound.

**_Ouputs_**

* An integer representing the number that satisfies the required conditions.

**_Rules_**

* The parameters (divisor, bound) passed to the function are only positive values.
* It's guaranteed that a divisor is found.

---

**Algorithm:**  

* Begin with the bound and check if it is divisible by the divisor using: `n % divisor == 0`.
* If the above condition is not satisfied then decrease `n` by one: `n -= 1`. 
* Check again: `n % divisor == 0`.
* Continue to do this until `n < 0`. However, we won't get to this because at some point `n == divisor` will be true so that `n % divisor` is true.

---

**Code:**  

```ruby
def max_multiple(divisor, bound)
  n = bound
  n -= 1 until n % divisor == 0
  n
end
```



