##### Code Wars > 7 kyu

---

## Regexp Basics - is it a letter?

**Problem:**  

Complete the code which should return `true` if the given object is a single ASCII letter (lower or upper case), `false` otherwise.

---

**Examples / Test Cases:**

```ruby
"".letter? == false
"a".letter? == true
"X".letter? == true
"7".letter? == false
"*".letter? == false
"ab".letter? == false
"a\n".letter? == false
```

---

**Data Structure:**  

**_Inputs_**

* A string.

**_Outputs_**

* A boolean: `true` if the input string is a single letter and `false` otherwise.

---

**Algorithm:**  

* Use regex.

---

**Code:**  

```ruby
class String
  def letter?
    self.size == 1 ? self.match?(/[a-z]/i) : false
  end
end
```

