##### Edabit > Ruby > Hard

---

## Shorthand for Key Signatures

#### Problem

##### Instructions:

Given a string containing a *key signature* **written in shorthand**, create a function which replaces the *shorthand* with its **full written name**.

- A **lowercase** letter denotes a **minor key**.
- An **uppercase** letter denotes a **major key**.

Notes:

- Write the *letter* name in **uppercase** (ignore **b** and **#**).
- Write `"major"` or `"minor"` in all **lowercase** (rather than `"Major"` or `"Minor"`).

##### Rules/Definitions (implicit and explicit):

* lowercase letter denotes a minor key
* uppercase letter denotes a major key
* Transform key signature from shorthand to full written name (i.e. include whether it is major or minor and always capitalize the first letter of the note).

##### Input/Output:

* Input: The key signature written in shorthand as a string.
* Output: the full written name as a string.

##### Mental Model:

Split the given string into separate parts by splitting along the white space. Obtain the last element of the resulting array. Check if the element string is uppercase or lowercase. If uppercase, append the word "major" to the end of the result array. If lowercase, change to uppercase and append the word "minor" to the end of the result array.



---

#### Examples / Test Cases

```
full_key_name("Prelude in C") ➞ "Prelude in C major"

full_key_name("Fugue in c") ➞ "Fugue in C minor"

full_key_name("Toccata and Fugue in d") ➞ "Toccata and Fugue in D minor"

full_key_name("Sonata in eb") ➞ "Sonata in Eb minor"
```

---

#### Data Structures

##### Input:

* A string

##### Output:

* A string

---

#### Algorithm

* Declare a `words` variable and initialize to the value of the given string split along the white space characters.
* Obtain the last element of the resulting array and store it in a variable named `note`.
* Check to see if the `note` is uppercase or lowercase.
* If `note[0].upcase() == note[0]`:
  * append `"major"` to the results array.
* else
  * capitalize `note` and append `"minor"` to the results array.
* join the results array on white space and return the resulting string.



---

#### Code

```ruby
```

