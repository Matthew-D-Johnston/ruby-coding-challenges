### Sum of Numbers

---

**Problem:**  

Given two integers `a` and `b`, which can be positive or negative, find the sum of all the numbers between including them too and return it. If the two numbers are equal return `a` or `b`.  

**Note:** `a` and `b` are not ordered!

---

**Examples / Test Cases:**

```ruby
get_sum(1, 0) == 1		# 1 + 0 = 1
get_sum(1, 2) == 3		# 1 + 2 = 3
get_sum(0, 1) == 1		# 0 + 1 = 1
get_sum(1, 1) == 1		# 1 Since both are the same
get_sum(-1, 0) == -1	# -1 + 0 = -1
get_sum(-1, 2) == 2		# - 1 + 0 + 1 + 2 = 2
```

---

**Data Structure:**  

**_Inputs_**

* Two integers.

**_Outputs_**

* A single integer representing the sum of all the integers in between the two given integers (inclusive).

**_Rules_**

* If both inputs are the same integer then return that integer.

---

**Algorithm:**

* Begin with a method definition that takes two arguments, `def get_sum(n1, n2)`.
* use an `if/else` conditional statement for three separate cases: 1) where `n1 == n2`; 2) where `n1 < n2`; and 3) where `n1 > n2`.
* `if n1 == n2` then return `n1`
* `elsif n1 < n2` then `(n1..n2).to_a.reduce(:+)`
* This can be complete with the ternary operator: `n1 <= n2 ? (n1..n2).reduce(:+) : (n2..n1).reduce(:+)`

---

**Code:**

```ruby
def get_sum(n1, n2)
  n1 <= n2 ? (n1..n2).reduce(:+) : (n2..n1).reduce(:+)
end
```



