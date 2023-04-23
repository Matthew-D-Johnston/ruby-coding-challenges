### GCD sum

---

**Problem:**  

Given the sum and gcd of two numbers, return those two numbers in ascending order. If the numbers do not exist, return `-1`, (or return `NULL` in C).

---

**Examples / Test Cases:**

```ruby
solve(12, 4) == [4, 8]
solve(12, 5) == -1
solve(10, 2) == [2, 8]
```

---

**Data Structure:**  

**_Inputs_**

* two arguments, both of which  are integers: 1) the sum of the two solution numbers; and 2) the greatest common denominator (gcd) of the two solution numbers.

**_Outputs_**

* an array containing two integers if there is a solution; if there is no solution, `-1`.

---

**Algorithm:**  

* We know that the gcd will have to be at least half the value of the sum. Thus, given the sum, we can cycle through all numbers from `1` to half of the sum (`s/2`) as the gcd. 
* if `gcd > sum/2` then we return `-1`
* if `gcd == sum/2` then we return `[gcd, gcd]`.
* Suppose we have: `sum = 12` and `gcd = 4`. 
* `sum/2 = 6` 
* If we count down by five and subtract from the sum to get a second number (i.e. so we have `5` and `7`) then we can divide both by the `gcd` and if the remainder for both is `0`, then we have our two numbers

---

**Code:**  

```ruby
def solve(s, g)
  solution = -1
  half_the_sum = s/2

  if g > half_the_sum
    solution = -1
  elsif g == half_the_sum
    solution = [g, g]
  else
    (half_the_sum - 1).downto(1) do |n1|
      n2 = s - n1
      solution = [n1, n2] if (n1 % g == 0) && (n2 % g == 0)
    end
  end

  solution
end
```

