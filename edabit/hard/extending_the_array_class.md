##### Edabit > Ruby > Hard

---

## Extending the Array Class

#### Problem

##### Instructions:

Write the following functions to extend the array class, by adding the methods:

1. square()
2. cube()
3. divisible_by(x)
4. strictly_above(x)
5. strictly_below(x)

##### Definitions/Rules (explicit and implicit):

* extend the array class.
* The `square` method squares every element of the array.
* The `cube` method cubes every element of the array.
* The `divisible_by(x)` method returns only those numbers that are factors of `x`.
* The `strictly_above(x)` method returns only those numbers that are strictly greater than `x`.
* The `strictly_below(x)` method returns only those numbers that are strictly less than `x`.

##### Input/Output:

* All inputs are arrays.
* Some inputs for the methods take a single number argument.
* The output is an array of numbers.

##### Mental Model:

Define each of the above methods on the `Array` class.

---

#### Examples / Test Cases

```ruby
[1, 2, 3].square
# => [1, 4, 9]

[1, 2, 3].cube
# => [1, 8, 27]

[1, 2, 3, 4].divisible_by(2)
# => [2, 4]

[1, 2, 3, 4].strictly_above(1)
# => [2, 3, 4]

[1, 2, 3, 4].strictly_below(2)
# => [1]
```

---

#### Data Structures

##### Input:

* arrays

##### Output:

* arrays

---

#### Algorithm

* 



---

#### Code

```ruby
class Array
  def square
    self.map { |el| el ** 2 }
  end

  def cube
    self.map { |el| el ** 3 }
  end

  def divisible_by(num)
    self.select { |el| el % num == 0 }
  end

  def strictly_above(num)
    self.select { |el| el > num }
  end

  def strictly_below(num)
    self.select { |el| el < num }
  end
end
```

