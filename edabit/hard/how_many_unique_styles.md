##### Edabit > Ruby > Hard

---

## How Many Unique Styles?

#### Problem

##### Instructions:

There are many different styles of music and many albums exhibit multiple styles. Create a function that takes a **list** of musical styles from albums and returns how many styles are **unique**.

##### Definitions/Rules (explicit and implicit):

* List: a comma-separated string containing one or more styles.

##### Input/Output:

* An array of comma-separated strings representing lists of musical styles.
* A number indicating the number of unique styles.

##### Mental Model:

Take the array containing the separate lists. Separate lists into separate styles and concatenating each style into one big array. Find the unique styles and count them.

---

#### Examples / Test Cases

```ruby
unique_styles([
  "Dub,Dancehall",
  "Industrial,Heavy Metal",
  "Techno,Dubstep",
  "Synth-pop,Euro-Disco",
  "Industrial,Techno,Minimal"
])
# => 9

unique_styles([
  "Soul",
  "House,Folk",
  "Trance,Downtempo,Big Beat,House",
  "Deep House",
  "Soul"
])
# => 7
```

---

#### Data Structures

##### Input:

* An array of strings.

##### Output:

* An integer.

---

#### Algorithm

* Declare a `styles` variable and assign it to an empty array.
* Iterate over each of the lists contained in the given array.
* For each string, split the string at the comma and then concatenate the resulting array to the `styles` array.
* Find the unique styles.
* Take the length of the unique styles array and return the result.

---

#### Code

```ruby
def unique_styles(styles_lists)
  styles = []

  styles_lists.each do |list|
    styles.concat(list.split(','))
  end

  return styles.uniq.length
end
```

