##### Code Wars > 7 kyu

---

## Tail Swap

**Problem:**  

You'll be given a list of two strings, and each will contain exactly one colon (`:`) in the middle (but not at beginning or end). The length of the strings, before and after the colon, are random.  

Your job is to return a list of two strings (in the same order as the original list), but with the characters after each colon swapped.

----

**Examples / Test Cases:**  

```ruby
tail_swap(["abc:123", "cde:456"]) == ["abc:456", "cde:123"]
tail_swap(["a:12345", "777:xyz"]) == ["a:xyz", "777:12345"]
```

---

**Data Structure:**  

**_Inputs_**

* An array containing two elements, both of which are strings.

**_Outputs_**

* An array containint two elements, both of which are strings. The strings are identical to the original input strings but with the endings (whatever follows the `:`) swapped.

---

**Algorithm:**  

* Since there is exactly one colon in each string, we can find the index of that colon using the `index(':')` method with `':'` as an argument. 
* I can iterate over the array collecting the tails of each string in the array and storing them in a new array.
* Then I can use `gsub` with the tails to swap the tails in the original strings.

---

**Code:**  

```ruby
def tail_swap(strings)
  tails = strings.map{ |string| string[(string.index(':') + 1)..-1] }
  first_string_tail_swap = strings.first.gsub(tails.first, tails.last)
  last_string_tail_swap = strings.last.gsub(tails.last, tails.first)
  [first_string_tail_swap, last_string_tail_swap]
end
```

