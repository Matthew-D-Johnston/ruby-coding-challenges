##### Code Wars > 6 kyu

---

## More Zeros than Ones

**Problem:**  

Create a `more_zeros` function which will receive a string for input, and return an array containing only the characters from that string whose binary representation of its ASCII value consists of more zeros than ones.  

You should remove any duplicate characters, keeping the first occurrence of any such duplicates so they are in the same order in the final array as they first appeared in the input string.  

---

**Examples / Test Cases:**  

```ruby
'abcde' === ["1100001", "1100010", "1100011", "1100100", "1100101"]
							 True				 True			 False			 True			 False

				--> ['a', 'b', 'd']

'DIGEST'--> ['D', 'I', 'E', 'T']

more_zeros('Great job!') == ['a', ' ', 'b', '!']
more_zeros('abcdeabcde') == ['a', 'b', 'd'] # Should not return duplicate values
```

---

**Data Structure:**  

**_Input_**

* A String object.

**_Output_**

* An Array object containing elements that represent characters of the original string whose binary representation of their ASCII values contain more ones than zeros.

**_Rules_**

* The output array should not contain any duplicate values. 

---

**Algorithm:**

* First...

----

**Code:**

```ruby
def more_zeros(string)
  array = string.chars.uniq
  array.select do |char|
    bin = char.ord.to_s(2)
    bin.count('0') > bin.count('1')
  end
end
```



