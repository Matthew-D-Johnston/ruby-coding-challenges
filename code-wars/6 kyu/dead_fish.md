##### Code Wars > 6 kyu

---

## Make the Deadfish swim

**Problem:**  

Write a simple parser that will parse and run Deadfish.  

Deadfish has 4 commands, each 1 character long:  

* `i` increments the value (initially `0`)
* `d` decrements the value
* `s` squares the value
* `o` outputs the value into the return array.

---

**Examples / Test Cases:**  

```ruby
parse("iiisdoso") == [8, 64]
parse("ooo") == [0, 0, 0]
parse("ioioio") == [1, 2, 3]
parse("idoiido") == [0, 1]
parse("isoisoiso") == [1, 4, 25]
parse("codewars") == [0]
```

---

**Data Structure:**  

**_Inputs_**

* A String object.

**_Outputs_**

* An Array object whose elements consist of the parsed value.

**_Rules_**

* The initial value is `0`
* Unless the character is one of the Deadfish commands, ignore it.

---

**Algorithm:**  

* Initialize a variable with the initial value of `0`: `the_value = 0`.
* Iterate over the characters of the input string.
* If the character matches one of, `i`, `d`, `s`, or `o`, then perform the appropriate action on `the_value`. Otherwise, ignore the character.

---

**Code:**  

```ruby
def parse(string)
  the_value = 0
  values = []

  string.each_char do |char|
    case char
    when 'i' then the_value += 1
    when 'd' then the_value -= 1
    when 's' then the_value **= 2
    when 'o' then values << the_value
    end
  end

  values
end
```



