##### Code Wars > 6 kyu

---

## Next Polydivisible Number

**Problem:**  

Given a non-negative number, return the next bigger polydivisible number, or an empty value like `null` or `Nothing`.  

A number is polydivisible if its first digit is cleanly divisible by `1`, its first two digits by `2`, its first three by `3`, and so on. There are finitely many polydivisible numbers.  

---

**Examples / Test Cases:**  

```ruby
next_num(0) == 1
next_num(10) == 12
next_num(11) == 12
next_num(1234) == 1236
next_num(123220) == 123252
```

---

**Data Structure:**  

**_Inputs_**  

* An Integer object.

**_Outputs_**

* An Integer object.

**_Rules_**

* Input must be non-negative.

---

**Algorithm:**

* Within our `next_num` method, let's initialize a `poly_div_num` local variable and assign it the value `nil`.
* Let's create a Hash object whose keys are Integer objects and values are Array objects. Each key will correspond to the number of digits for each sub-integer of the origina input (i.e. if the input is `3425`, then the Hash will have four key/value pairs: `1 => [3]`, `2 => [3, 4]`, `3 => [3, 4, 2]`, and `4 => [3, 4, 2, 5]`).
* We will create a new method to peform this operation called `sub_digits`.
* Within the method we will create a `digits` array of the original integer input, `int.digits.reverse`.
* Create a Hash object called `digits_hsh`: `digits_hsh = Hash.new(0)`.
* We will then start from the size of this array and count down, using each count as the key for a newly created hash.
* Now, let's create a method that will return `true` if every value of the newly created hash contains a polydivisible number.
* This method we will call `poly_divisible?(int)`
* We shall initialize a new local variable in the method called `results` and assign it to an empty hash.
* Then we will count up from `1` upto the total number of digits in the given integer. 
* Iterating through that range we shall use each element of the range as the keys to the `sub_digits` method, which returns a hash, `join` the array of digits that is returned and then convert to an integer, `to_i`. Then we perform modulo, `%`, dividing by the range element, denoted as `key`, and checking to see if it is equal to zero, `zero?`. We shove, `<<` this result to our `results` array.
* Outside of the iteration we check to see if every element of the `results` array is `true`. If so, we return `true` for the method.
* Then, let's begin an `until` loop with the condition `until poly_div_num != nil`, which we could also translate to `while poly_div_num.nil?`.
* Within the loop we will keep incrementing our original input integer by 1 and then dividing that number by the number of digits it contains until we get a clean division (i.e. no remainder).

---

**Code:**  

```ruby
def next_num(int)
  poly_div_num = nil

  while poly_div_num.nil?
    int += 1
    poly_div_num = int if poly_divisible?(int)
  end

  poly_div_num
end

def sub_digits(int)
  digits = int.digits.reverse
  digits_hsh = Hash.new(0)

  digits.size.downto(1) do |key|
    digits_hsh[key] = digits.clone
    digits.pop
  end

  digits_hsh
end

def poly_divisible?(int)
  results = []

  1.upto(int.digits.size) do |key|
    results << (sub_digits(int)[key].join.to_i % key).zero?
  end

  results.all? { |elem| elem == true }
end
```

It does the job, but Code Wars times out. I will need to come up with something more efficient.

**Refactored:**  

```ruby
def next_num(int)
  poly_div_num = nil

  while poly_div_num.nil?
    int += 1
    poly_div_num = int if poly_divisible?(int)
  end

  poly_div_num
end

def poly_divisible?(int)
  digits = int.digits.reverse
  results = []

  0.upto(digits.size - 1) do |idx|
    results << (digits[0..idx].join.to_i % (idx + 1)).zero?
    break if !(digits[0..idx].join.to_i % (idx + 1)).zero?
  end

  results.all? { |elem| elem == true }
end
```

Still times out.

**Refactored 2:**

```ruby
def next_num(int)
  poly_div_num = nil
  digits = (int + 1).digits.reverse
  sub_digits = nil

  0.upto(digits.size - 1) do |idx|
    sub_digits = digits[0..idx].join.to_i

    until digit_divisible?(sub_digits)
      if digits[idx] == 9
        idx.upto(digits.size - 1) { |idx2| digits[idx2] = 0 }
        digits[idx - 1] += 1
      else
        digits[idx] += 1
        (idx + 1).upto(digits.size - 1) { |idx2| digits[idx2] = 0 }
      end

      sub_digits = digits[0..idx].join.to_i
    end
  end

  sub_digits
end

def digit_divisible?(int)
  int_size = int.digits.size

  (int % int_size).zero?
end
```

The above solution appears to be fast enough but now I'm getting the message, `Expected: nil, instead got: 3608528850368400786036750` as an error. All the other tests seem to be passing.  

The problem is that I'm not sure under what conditions I should be returning `nil`.  

Doing a quick Google search, it appears that the maximum polydivisible number is `3,608,528,850,368,400,786,036,725`. Thus, when a put in a guard clause to return `nil` for any solution greater than this number, I no longer get the above error. However, now I see that I am failing a bunch of other tests, all of which are at very high numbers. I think it has to do with the fact that I've worked in the case where if the current digit is `9`, I increment the previous index by `1`, but I need to extend this out so that I can continue to increment by `1` for indices that are even further back than the preceding one.

**Refactored Again:**

```ruby
def next_num(int)
  int += 1 if (int % int.digits.size).zero?

  until increment(int) == 1 && (int % int.digits.size).zero?
    int += increment(int)
  end

  int
end

def sub_digits(int)
  digits = int.digits.reverse
  digits_hsh = Hash.new(0)

  digits.size.downto(1) do |key|
    digits_hsh[key] = digits.clone
    digits.pop
  end

  digits_hsh
end

def increment(int)
  num_size = int.digits.size
  non_poly_digit = num_size

  1.upto(num_size) do |key|
    if !(sub_digits(int)[key].join.to_i % key).zero?
      non_poly_digit = key
      break
    end
  end

  
  divisor = ('1' + '0'*(num_size - non_poly_digit)).to_i

  divisor - (int % divisor)
end
```

Again, this one times out.

**Refactored Again:**

```ruby
def next_num(int)
  int += 1 if (int % int.digits.size).zero?

  until poly_divisible?(int)
    int = increment(int)
  end

  int
end

def sub_digits(int)
  digits = int.digits.reverse
  digits_hsh = Hash.new(0)

  digits.size.downto(1) do |key|
    digits_hsh[key] = digits.clone
    digits.pop
  end

  digits_hsh
end

def poly_divisible?(int)
  digits = int.digits.reverse
  results = []

  0.upto(digits.size - 1) do |idx|
    results << (digits[0..idx].join.to_i % (idx + 1)).zero?
    break if !(digits[0..idx].join.to_i % (idx + 1)).zero?
  end

  results.all? { |elem| elem == true }
end

def increment(int)
  num_size = int.digits.size
  non_poly_digit = num_size

  1.upto(num_size) do |key|
    if !(sub_digits(int)[key].join.to_i % key).zero?
      non_poly_digit = key
      break
    end
  end

  
  factor = ('1' + '0'*(num_size - non_poly_digit)).to_i

  ((int / factor) * factor) + factor
end
```

Still timing out.

