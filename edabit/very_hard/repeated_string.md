##### Edabit > Ruby > Very Hard

---

## Repeated String

#### Problem

##### Instructions:

Edward has a string `s` of lowercase English letters that he repeated infinitely many times. Given an integer `n`, find and print the number of letter "a"s in the first `n` letters of Edward's infinite string. For example, if the string `s=abcac` and `n=10`, the substring we consider is `abcacabcac`, the first `10` characters of his infinite string. There are `4` occurrences of `a` in the substring.

Complete the `repeated_string()` method. It should return an integer representing the number of occurrences of `a` in the prefix of length `n` in the infinitely repeating string.

##### Definitions/Rules (explicit and implicit):

* Infinite string: string of lowercase English letters repeated infinitely.
* Find the number of occurrences of the letter `'a'`.

##### Input/Output:

* Inputs: the string that is to be repeated an infinite amount of times, and a number representing first `n` letters of the infinite string.
* Output: the number of occurrences of the letter `'a'` in the first `n` letters of the string.

##### Mental Model:

Take the string and given number `n`. Perform a floored division of the number `n` by the length of the string. Find how many letter `'a'`s are in the string. Multiply the number of `'a'`s by the result of the floored division. If the floored division is equal to regular division, then simply return the multiplied `'a'`s result. Otherwise, take the first character of the given string: if it is an `'a'` then add one to the result of the multiplied `'a'`s and return that number; otherwise just return the result of the multiplied `'a'`s.

---

#### Examples / Test Cases

```ruby
repeated_string("aba", 10) ➞ 7

repeated_string("a", 1000000000000) ➞ 1000000000000

repeated_string("aab",882787) ➞ 588525
```

---

#### Data Structures

##### Input:

* A string and an integer.

##### Output:

* An integer.

---

#### Algorithm

* Declare a variable `multiplier` which is equal to `n // str.length`.
* Declare a variable `number_of_as` and set it equal to the number of `'a'`s in the given string.
* Reassign the value of `number_of_as` by using the `*=` operator with the multiplier.
* Check to see if the floored division is equal to regular division of `n` by `str.length`.
* If it is equal:
  * return `number_of_as`
* Otherwise:
  * Take the first character of the given string.
  * If it is an `'a'`:
    * increment `number_of_as` by one and return the result.
  * Otherwise:
    * return `number_of_as`.

---

#### Code

##### Solution 1

```ruby
def repeated_string(str, int)
  multiplier = int / str.length
  number_of_as = str.split('').select { |char| char == 'a' }.length
  number_of_as *= multiplier

  if (int / str.length) == (int.to_f / str.length)
    return number_of_as
  else
    if str[0] == 'a'
      return number_of_as += 1
    else
      return number_of_as
    end
  end
end
```

##### Solution 2

Refactored using regex.

```ruby
def repeated_string(str, int)
  multiplier = int / str.length
  number_of_as = str.scan(/a/).length
  number_of_as *= multiplier

  if (int / str.length) == (int.to_f / str.length)
    return number_of_as
  else
    if str[0] == 'a'
      return number_of_as += 1
    else
      return number_of_as
    end
  end
end
```

