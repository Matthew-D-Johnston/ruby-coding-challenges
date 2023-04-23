##### Edabit > Ruby > Very Hard

---

## Dividing into Chunks of Maximum Sum N

#### Problem

##### Instructions:

Write a function that divides an array into chunks such that the sum of each chunk is `<= n`. Start from the left side of the array and move to the right.

_Notes_

- The max of the array will always be smaller than or equal to `n`.
- Use the **greedy approach** when solving the problem (e.g. fit as many elements you can into a chunk as long as you satisfy the sum constraint).

##### Definitions/Rules (explicit and implicit):

* Chunk: a subarray whose elements have a sum that is less than or equal to some number `n`.
* Start from left side of array and move to the right.
* Assume that no number in the array will be greater than the sum constraint number.

##### Input/Output:

* Inputs: an array of numbers and a single number representing the sum constraint.
* Output: an array of nested arrays representing chunks.

##### Mental Model:

Take the given array and iterate over each of its elements. Add the current element to a "chunk" array. Check to see if the sum of the chunk array is greater than `n`. If so, remove the element that was just added. Store the chunk in a "chunks" array. Then reset the chunk to an empty array and store the current element in it. Move on to the next element. After all elements have been divided into a chunk and added to the chunks array, return the resulting chunks array.

---

#### Examples / Test Cases

```ruby
divide([1, 2, 3, 4, 1, 0, 2, 2], 5)
➞ [[1, 2], [3], [4, 1, 0], [2, 2]]

divide([1, 0, 1, 1, -1, 0, 0], 1)
➞ [[1, 0], [1], [1, -1, 0, 0]]

divide([2, 1, 0, -1, 0, 0, 2, 1, 3], 3)
➞ [[2, 1, 0, -1, 0, 0], [2, 1], [3]]
```

---

#### Data Structures

##### Input:

* An array of numbers.
* A number.

##### Output:

* An array of nested arrays whose elements are numbers.

---

#### Algorithm

* Declare a `chunks` array variable.
* Declare a `chunk` array variable.
* Iterate over each element of the given `numbers` array.
* Add the element to the `chunk` array.
* Check the sum of the elements in the `chunk` array.
* If the sum is greater than the given number `n`, remove the recently added element from the `chunk` array.
* Then, push the `chunk` array to the `chunks` array.
* Set the `chunk` array to an empty array and add the current element.
* If the current index is equal to the last index of the array, then push the `chunk` array to the `chunks` array.
* After all iterations are complete, return the `chunks` array.

---

#### Code

```ruby
def divide(numbers, constraint)
  chunks = []
  chunk = []

  numbers.each_with_index do |num, idx|
    chunk.push(num)
    if chunk.reduce(:+) > constraint
      chunk.pop()
      chunks.push(chunk)
      chunk = []
      chunk.push(num)
    end

    if idx == numbers.length - 1
      chunks.push(chunk)
    end
  end

  chunks
end
```

