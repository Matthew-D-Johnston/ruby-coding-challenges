##### Code Wars > 7 kyu

---

## Santa's Naughty List

**Problem:**  

Christmas is coming, and Santa has a long list to go through, to find who deserves presents for the big day. Go through a list of children, and return a list containing every child who appeared on Santa's list. Do not add any child more than once. Output should be sorted.  

---

**Examples / Test Cases:**  

```ruby
find_children(["Jason", "Jackson", "Jordan", "Johnny"], ["Jason", "Jordan", "Jennifer"])
# => ["Jason", "Jordan"]
find_children(["Jason", "Jackson", "Johnson", "JJ"], ["Jason", "James", "JJ"])
# => ["JJ", "Jason"]
```

---

**Data Structure:**  

**_Inputs_**

* Two arrays containing string representations of individual names.

**_Outputs_**

* A single array containing string representations of the individual names that appear in both of the input arrays.

**_Rules_**

* Comparison should be case sensitive and the returned list should contain only one copy of each name: `"Sam"` and `"sam"` are different, but `"sAm"` and `"sAm"` are not.

---

**Algorithm:**  

* Iterate through the first array (Santa's list) and for each child's name, select the elements of the second array that have the same name.

---

**Code:**  

```ruby
def find_children(santas_list, children)
  final_list = []
  
  santas_list.each do |santas_pick|
    children.each { |child| final_list << child if child == santas_pick }
  end
  
  final_list.uniq.sort
end 
```

