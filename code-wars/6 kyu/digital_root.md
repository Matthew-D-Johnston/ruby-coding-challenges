##### Code Wars > 6 kyu

---

## Digital Root

In this kata, you must create a `digital root` function.  

A digital root is the _recursive sum of all the digits in a number_. Given _n_, take the sum of the digits of _n_. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.  

---

**Examples / Test Cases:**  

```ruby
digital_root(16) == 7
# => 1 + 6
# => 7
digital_root(942) == 6
# => 9 + 4 + 2
# => 15 ...
# => 1 + 5
# => 6
digital_root(456) == 6
digital_root(132189) == 6
digital_root(493193) == 2
```

---

**Data Structure:**  

**_Inputs_**

* An integer.

**_Outputs_**

* An integer representing the digital root.

---

**Algorithm:**  

* Split the integer into separate digits and add up the digits (use `digits.sum`).
* Repeat this process until there is a single digit; that is, the number is less than 10.

---

**Code:**  

```ruby
def digital_root(n)
  until n < 10
    n = n.digits.sum
  end
  n
end
```

