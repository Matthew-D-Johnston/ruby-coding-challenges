##### Code Wars > 6 kyu

---

## Look and say numbers

**Problem:**  

There exists a sequence of numbers that follows the pattern

```
          1
         11
         21
        1211
       111221
       312211
      13112221
     1113213211
          .
          .
          .
```

Starting with "1" the following lines are produced by "saying what you see", so that line two is "one one", line three is "two one(s)", line four is "one two one one".  

Write a function that given a starting value as a string, returns the appropriate sequence as a list. The starting value can have any number of digits. The termination condition is defined by the maximum number of iterations, also supplied as an argument.

---

**Examples / Test Cases:**  

```ruby
look_and_say('132', 8)

# => ['111312', '31131112', '1321133112', '11131221232112', '31131122111213122112', '13211321223112111311222112', '1113122113121122132112311321322112', '311311222113111221221113122112132113121113222112']
```

---

**Data Structure:**  

**_Inputs_**

* Two arguments: a string representing the starting value and an integer representing the number of iterations.

**_Outputs_**

* It appears as though the return value of the method is an array whose elements consist of string values representing the result of each iteration.

---

**Algorithm:**  

* There are two primary things that need to be done. The first is to check how many consecutive digits there are in a string and what the value of that digit is. We might store these in two separate variables: `pattern_counter` and `digit`.
* The first thing will be to take our given string, which is passed in as an argument to the `data` parameter, and assign the first character to the `digit` variable. This character will be the first pattern we check for.
* We should also initialize the `pattern_counter` variable with a value of `1`.
* We should aslo initialize a `patterns` variable and assign it to an empty array. This array will be populated by the "say what you see" patterns in our given string.
* Now, we are going to want to begin some kind of loop method in order to iterate over the individual characters of the given string. Since we already know what the first character is we can start with the second character in the string, which will have an index of 1. Since the maximum iterations we will want to perform is the total number of characters in the string, we can use maybe an `upto` method that begins at 1 and goes to the last index number in the string, which will be the size of the string minus 1: `1.upto(data.size - 1) do |idx|`.
* Within the loop, we want to check to see if the current character in the string matches the one assigned to the `digit` variable. This means we will be needing an `if` conditional statement: `if digit == data[idx]`.
* Now if the above condition is satisfied, we are going to want to increment our `pattern_counter` variable, which at this point should have a value of `2`. Also, if we are on the last index, or last iteration, we are going to want to concatenate our `pattern_counter` and `digit` variable and push them to our `patterns` array. If it is not the last iteration then we will want to go on to the next iteration.
* However, if the condition is not satisfied, we are going to one to create a string that concatenates our `pattern_counter` and `digit` variables and push them to our `patterns` array. Secondly, we must reassign the `digit` variable to the current character value (i.e. `data[idx]`). Finally, we must reset the `pattern_counter` variable to `1`.

---

**Code:**  

```ruby
def look_and_say(data='1', maxlen=5)
  say_what_you_see = []
  
  maxlen.times do
    digit = data[0]
    pattern_counter = 1
    patterns = []

    if data == '1'
      patterns << '11'
    else
      1.upto(data.size - 1) do |idx|
        if digit == data[idx]
          pattern_counter += 1
        else
          patterns << pattern_counter.to_s + digit
          digit = data[idx]
          pattern_counter = 1
        end

        patterns << pattern_counter.to_s + digit if idx == (data.size - 1)
      end
    end

    data = patterns.join
    say_what_you_see << data
  end

  say_what_you_see
end
```

