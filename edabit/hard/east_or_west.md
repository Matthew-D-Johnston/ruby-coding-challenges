##### Edabit > Ruby > Hard

---

## East or West

#### Problem

##### Instructions:

You will be given an array of string `"east"` formatted differently every time. Create a function that returns `"west"` wherever there is `"east"`. Format the string according to the input. Check the examples below to better understand the question.

##### Definitions/Rules (implicit and explicit):

* An array of strings containing the word 'east'; the word may repeat and may be formatted differently.
* The different formats may include spaces or some letters may be capitalized while others are not.
* The output should maintain the same format of the input, only with the word 'west' replacing the word 'east'.

##### Input/Output:

* An array of strings containing some version of the word 'east'.
* An array of strings containing a corresponding version of the word 'west'.

##### Mental Model:



---

#### Examples / Test Cases

```
direction(["east", "EAST", "eastEAST"]) ➞ ["west", "WEST", "westWEST"]

direction(["eAsT EaSt", "EaSt eAsT"]) ➞ ["wEsT WeSt", "WeSt wEsT"]

direction(["east EAST", "e a s t", "E A S T"]) ➞ ["west WEST", "w e s t", "W E S T"]
```

---

#### Data Structures

##### Input:

* An array of strings.

##### Output:

* An array of strings.

---

#### Algorithm

* We need to iterate over each string in the given array and map it to the translated output array.
* For each string we then need to iterate over each character and check to see if it is an 'e', 'E', 'a', or 'A'.
* If it is one of those characters then the new string we need to build must use 'w', 'W', 'e', or 'E', respectively.
* For any other character, the new string can just use that same character.



---

#### Code

```ruby
def direction(east_arr)
  east_arr.map do |str|
    new_str = ''

    str.split('').each do |char|
      case char
      when 'e'
        new_str += 'w'
      when 'E'
        new_str += 'W'
      when 'a'
        new_str += 'e'
      when 'A'
        new_str += 'E'
      else
        new_str += char
      end
    end

    new_str
  end
end
```

