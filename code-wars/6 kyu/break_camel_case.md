##### Code Wars > 6 kyu

---

## Break CamelCase

**Problem:**  

Complete the solution so that the function will break up camel casing, using a space between words.  

---

**Examples / Test Cases:**  

```ruby
solution("camelCasing") == "camel Casing"
solution("camelCasingTest") == "camel Casing Test"
```

---

**Data Structure:**  

**_Inputs_**

* String object, which employs the use of CamelCase.

**_Outputs_**

* String object with spaces inserted wherever there is an instance of CamelCase in the original input string.

---

**Algorithm:**  

* We will make use of the `String#insert` method here.
* Actually, it might be best just to split the string into separate characters and store in an array.
* Then, we initialize a new variable and assign it to an empty string, `result = ""`.
* Then, we iterate over the array of characters and simply push each one to the `result` string unless the next character in the index is a capital letter. In that case we, want to push a space, `" "`, to the `result` string.
* One edge case would be if there is already a space before the capital letter. However, we will assume that is not the case for now and that all inputs contain no spaces.

---

**Code:**  

```ruby
def solution(string)
  chars = string.chars
  result = ""

  chars.each_with_index do |char, idx|
    result << char
    result << " " if chars[idx + 1] =~ /[A-Z]/
  end

  result
end
```



