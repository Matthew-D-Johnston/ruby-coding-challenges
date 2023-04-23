##### Edabit > Ruby > Medium

---

## What Type of Triangle?

#### Problem

##### Instructions:

Create a function which returns the type of triangle, given the side lengths. Return the following values if they match the criteria.

- No sides equal: `"scalene"`
- Two sides equal: `"isosceles"`
- All sides equal: `"equilateral"`
- Less or more than 3 sides given: `"not a triangle"`

_Notes_:

- You will be given an array of positive integers.
- Check the **Resources** tab for more information on the types of triangles.

##### Definitions/Rules (explicit and implicit):

* None of the integers are equal: scalene.
* Two of the integers are equal: isosceles.
* All three integers are equal: equilateral.
* Array will be positive integers.
* If the array has a length greater than or less than 3, then return `"not a triangle"`.

##### Input/Output:

* Input: an array of integers corresponding to the sides of a triangle.
* Output: a string denoting the type of triangle, or a string saying it is not a triangle.

##### Mental Model:

Take the given array. Check to see if the length of the array is equal to three. If so, then determine how many of the sides/integers are unique. If all are unique, the it's a scalene triangle. If there are two unique sides/integers, then it's an isosceles triangle. If there is only one unique side/integer, then it's an equilateral triangle. If the array has a length that is not equal to three, then return `"not a triangle"`.

---

#### Examples / Test Cases

```ruby
get_triangle_type([2, 6, 5])
# => "scalene"
get_triangle_type([4, 4, 7])
# =>"isosceles"
get_triangle_type([8, 8, 8])
# => "equilateral"
get_triangle_type([3, 5, 5, 2])
# => "not a triangle"
get_triangle_type([3, 5])
# => "not a triangle"
```

---

#### Data Structures

##### Input:

* An array of positive integers.

##### Output:

* A string.

---

#### Algorithm

* Take the array and check to see if it's length is equal to 3.
* If it is not, then we can return `"not a triangle"`
* If it is then we need to check three other conditions.
* We can check how many unique integers are in each array.
* If all of the integers are unique then we return `"scalene"`
* If two of the integers are unique then we return `"isosceles"`
* If there is only one unique integer then we return `"equilateral"`

---

#### Code

```ruby
def get_triangle_type(arr)
  if arr.length == 3
    if arr.uniq.length == 3
      "scalene"
    elsif arr.uniq.length == 2
      "isosceles"
    else
      "equilateral"
    end
  else
    "not a triangle"
  end
end
```





