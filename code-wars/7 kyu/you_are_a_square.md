### You're a Square!

---

**Problem:**  

Given an integral number, determine if it's a square number:  

In mathematics, a **square number** or **perfect square** is an integer that is the square of an integer; in other words, it is the product of some integer with itself.

---

**Examples / Test Cases:**  

```ruby
isSquare(-1) returns false
isSquare(0) returns true
isSquare(3) returns false
isSquare(4) returns true
isSquare(25) returns true
isSquare(26) returns false
```

---

**Data Structure:**

**_Inputs_**

* an integer

**_Outputs_**

* a boolean: `true` if the input is a perfect square and `false` otherwise.

---

**Algorithm:**  

* we know that if the number is less than zero then it cannot have a perfect square: `return false if x < 0`
* For all other inputs, we need to square every integer that is less than the input and check to see if it equals the input. We return true if it equals the input and false otherwise.
* Or take the square root of the input and if it is an integer value then we return true.

---

**Code:**

```ruby
def is_square(x)
  return false if x < 0
  Math.sqrt(x) == Math.sqrt(x).to_i
end
```

