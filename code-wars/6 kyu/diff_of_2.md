##### Code Wars > 6 kyu

---

## Difference of 2

**Problem:**  

The objective is to return all pairs of integers from a given collection of integers that have a difference of 2.  

The result should be sorted in ascending order.  

The input will consist of unique values. The order of the integers in the input collection should not matter.  

---

**Examples / Test Cases:**  

```ruby
twos_difference([1, 2, 3,4]) == [[1, 3], [2, 4]]
twos_difference([1, 3, 4, 6]) == [[1, 3], [4, 6]]
twos_difference([6, 3, 4, 1, 5]) == [[1, 3], [3, 5], [4, 6]]
twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]) == [[1, 3], [3, 5], [6, 8], [8, 10], [10, 12], [12, 14]]
```

---

**Data Structure:**  

**_Input_**

* An Array object whose elements are unique integer values.

**_Output_**

* An Array object whose elements are also Array objects that consist of pairs of Integer objects whose difference is two.
* The result should be sorted in ascending order.

**_Rules_**

* Unique values for input.
* Output in ascending order.

---

**Algorithm:**  

* The approach I imagine working best will be to use a `map` method nested within another `map` method.
* Both outer and inner `map` methods will iterate over elements of the input array.
* The outer `map` method will assign each element to a method local variable named `first`.
* The inner `map` method will assign each element to a method local variable named `second`.
* 



---

**Code:** 

```ruby
def twos_difference(array)
  hsh = Hash.new(0)

  array.each_with_index do |num, idx|
    hsh[num] = array[(idx + 1)..(array.size - 1)]
  end

  results = []
  hsh.each do |key, value|
    value.each do |num|
      results << [key, num].sort if (key - num).abs == 2
    end
  end

  results.sort
end
```

