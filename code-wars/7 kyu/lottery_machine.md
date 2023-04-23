##### Code Wars > 7 kyu

---

## Lottery Machine

**Problem:**  

Your task is to write an update for a lottery machine. Its current version produces a sequence of random letters and integers (passed as a string to the function lottery()). Your code inside lottery() must filter out all letters and return unique integers as a string. If there are no integers in the string return--"One more run!".

---

**Examples / Test Cases:**  

```ruby
lottery("wQ8Hy0y5m5oshQPeRCkG") == '805'
lottery("ffaQtaRFKeGIIBIcSJtg") == 'One more run!'
```

---

**Data Structure:**  

**_Inputs_**

* A string of individual letters and/or digits.

**_Outputs_**

* A string of unique digits contained in the original string, or if there were no digits in the input string, then the following string: "One more run!".

---

**Algorithm:**  

* Split the original string into individual characters using `chars`.
* Then select only the digits within the string, collecting them into a new array using the `select` method and a regular expression `/\d/`. 
* Use the `uniq` method to return only the unique digits.
* Then use `join` on the array to return a string.

---

**Code:**  

```ruby
def lottery(str)
  result = str.chars.select { |char| /\d/ =~ char }.uniq
  result.empty? ? "One more run!" : result.join
end
```



