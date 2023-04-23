##### Code Wars > 6 kyu

----

## Array Exchange

**Problem:**  

Array Exchange and Reversing.  

It's for some array exchange! The objective is simple: exchange the elements of two arrays in-place in a way that their new content is also reversed.  

---

**Examples / Test Cases:**  

```ruby
# before
my_array = ['a', 'b', 'c']
other_array = [1, 2, 3]

my_array.exchange_with!(other_array)

# after
my_array == [3, 2, 1]
other_array == ['c', 'b', 'a']
```

---

**Data Structure:**  

The object is to define a method within the `Array` class that will be called on an Array object and which will take another Array object as an argument. The variable referencing the calling object will be exchanged with the object that is passed in as an argument, and the elments of those Array objects will be reversed.

**_Inputs_**

* An Array object as the calling object and an other Array object as the argument to the method.

**_Outputs_**  

* The variables that reference the two Array objects will exchange their references, and the Array objects will have their elements reversed.

---

**Algorithm:**  

* Begin by defining a`MyArray` class.
* Define that class with a single `exchange_with!` method. 

---

**Code:**  

```ruby
class Array
  def exchange_with!(other_array)
    calling_array = self.clone
    argument_array = other_array.clone

    self.clear
    other_array.clear

    0.upto(calling_array.size - 1) do |idx|
      other_array << calling_array[idx]
    end

    0.upto(argument_array.size - 1) do |idx|
      self << argument_array[idx]
    end

    other_array.reverse!
    self.reverse!
  end
end
```





