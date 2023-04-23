##### Code Wars > 6 kyu

---

## Strongest Even Number in an Interval

**Problem:**  

The strongness of an even number is the number of times we can successively divide by 2 until we reach an odd number starting with an even number n.  

For example, if n = 12, then

* 12 / 2 = 6
* 6 / 2 = 3

So we divided successively 2 times and we reached 3, so the strangeness of 12 is `2`.  

If n = 16, then,

* 16 / 2 = 8
* 8 / 2 = 4
* 4 / 2 = 2
* 2 / 2 = 1

we divided successively 4 times and we reached 1, so the strongness of 16 is `4`.

_Task_

Given a closed interval `[n, m]`, return the even number that is the strongest in the interval. If multiple solutions exist return the smallest strongest even number.  

Note that programs must run within the alloted server time; a naive solution will probably time out.  

_Constraints_  

1 <= n < m <= 2^64  

---

**Examples / Test Cases:**

```ruby
strongest_even(1, 2) == 2 # 1 has strongness 0; 2 has strongness 1
strongest_even(5, 10) == 8 # 5, 7, 9 have strongness 0; 6, 10 have strongness 1; 8 has strongness 3
strongest_even(48, 56) == 48
strongest_even(129, 193) == 192
```

---

**Data Structure:**  

**_Inputs_**

* Two arguments, both of which are Integer objects representing the start and end of an interval.

**_Outputs_**

* A single Integer object, representing the even number in the interval with the greatest _strongness_.

**Rules**

* There is a single constraint: the interval start and end will be constrained between 1 and 2^64.

---

**Algorithm:**

* First, extract the even numbers from the interval.
  * `evens = (start..end).to_a.select { |n| n.even? }`

* Initialize a `current_strongness` local variable and assign it the value `0`.
* Initialize a `current_strongest` local variable and assign it the value `1`.
* Write a method that will recursively divide a number by two until the result is an odd number, and output the number of times it performed a division operation; this will be the _strongness_ of the number.
  * `def strongness(even_number)`
  * 
* If the strongness is greater than the value assigned to the `current_strongness` variable, replace it, and replace the value of the  `current_strongest` local variable with the current number; if the strongness is equal to the value assigned to the `current_strongness` variable, replace it only if the current number is less than the value assigned to the `current_strongest` variable.
* After iterating through all even numbers, return the value associated with the  `current_strongest` variable.



_Algorithmic Musings_

Multiples of 10

* 10 / 2 = 5
* 20 / 2 = 10; 10 / 2 = 5 (2)
* 30 / 2 = 15 (1)
* 40 / 2 = 20; 20 / 2 = 10; 10 / 2 = 5 (3)
* 50 / 2 = 25 (1)
* 60 / 2 = 30; 30 / 2 = 15 (2)
* 70 / 2 = 35 (1)
* 80 / 2 = 40; 40 / 2 = 20; 20 / 2 = 10; 10 / 2 = 5 (4)
* 90 / 2 = 45 (1)
* 100 / 2 = 50; 50 / 2 = 25 (2)
* 110 / 2 = 55 (1)
* 120 / 2 = 60; 60 / 2 = 30; 30 / 2 = 15 (3)
* 130 / 2 = 65 (1)
* 140 / 2 = 70; 70 / 2 = 35 (2)

_Towards a non-Naive Solution_

* Isolate the even numbers in the integer into an array: `evens = (int_start...int_end).to_a.select { |n| n.even? }`.

* This array will need to be stored (i.e. should not be mutated), or at least, we need somehow how of retaining a record of the original numbers.

* Perhaps, we should create an hash, where each number of our `evens` array is one of the keys in the hash, and each key will start with a corresponding value of 0. Then, whenever we halve the numbers in the array, we can compare the indices of the numbers that are even with the indices of the original array.

* But then we need to divide each number by 2, and store in a new array: `halves = evens.map { |n| n / 2 }`.

* Get the indices of all the even numbers:

  * `even_idx = []`
  * `halves.each_with_index { |n, idx| even_idx << idx if n.even? }`

* Use those indices to see which values in the `evens` array correspond to those indices and store in an array:

  * `strongest = []`
  * `even_idx.each { |idx| strongest << evens[idx] }`

* So, now we want to take our halved array and isolate the even numbers, we can store this back in our `even` array.

  * `evens = halves.select { |n| n.even? }`

  

---

**Code:**  

Here's a naive solution.

```ruby
def strongest_even(int_start, int_end)
  evens = (int_start..int_end).to_a.select { |n| n.even? }
  evens = evens[-100..-1] if evens.size > 100

  current_strongness = 0
  current_strongest = 1

  evens.each do |even_number|
    if current_strongness < strongness(even_number)
      current_strongness = strongness(even_number)
      current_strongest = even_number
    elsif current_strongness == strongness(even_number)
      current_strongest = even_number if even_number < current_strongest
    end
  end

  current_strongest
end

def strongness(even_number)
  result = even_number
  counter = 0

  loop do
    if result.even?
      result = result / 2
    else
      break
    end

    counter += 1
  end

  counter
end
```

Time's out when we get to larger numbers.  

Let's try again...

```ruby
def strongest_even(int_start, int_end)
  interval = (int_start..int_end).to_a
  evens = interval.select { |n| n.even? }
  evens_copy = evens
  strongest = evens

  loop do
    halves = evens_copy.map { |n| n / 2 }
    even_idx = []
    halves.each_with_index { |n, idx| even_idx << idx if n.even? }

    if even_idx.empty?
      break
    else
      strongest = []
      even_idx.each { |idx| strongest << evens[idx] }
      evens_copy = halves.select { |n| n.even? }
      evens = strongest
    end
  end

  strongest.min
end
```

Works, but again, it times out.  

Let's try again...

```ruby
def strongest_even(int_start, int_end)
  interval = (int_start..int_end).to_a
  evens = interval.select { |n| n.even? }

  reverse_binaries = evens.map { |n| n.to_s(2).reverse }
  evens[reverse_binaries.index(reverse_binaries.min)]
end
```

Or...

```ruby
def strongest_even(int_start, int_end)
  interval = (int_start..int_end).to_a
  evens = interval.select { |n| n.even? }

  reverse_binaries = evens.map { |n| ("%b" % n).reverse }
  evens[reverse_binaries.index(reverse_binaries.min)]
end
```

This was a much cleaner solution, but it still timed out.  

This one improves on the timing, but still not enough.

```ruby
def strongest_even(int_start, int_end)
  markers = []
  1.upto(64) do |n|
    markers << 2**n
  end

  last_marker = nil

  markers.each do |marker|
    last_marker = marker if (int_start..int_end).include?(marker)
  end

  if last_marker
    interval = (last_marker..int_end).to_a
  else
    interval = (int_start..int_end).to_a
  end

  evens = interval.select { |n| n.even? }

  reverse_binaries = evens.map { |n| n.to_s(2).reverse }
  evens[reverse_binaries.index(reverse_binaries.min)]
end
```

