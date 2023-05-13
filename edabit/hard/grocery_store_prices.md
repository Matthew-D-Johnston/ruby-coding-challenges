##### Edabit > Ruby > Hard

---

## Grocery Store Prices

#### Problem

##### Instructions:

You are given an array of strings consisting of grocery items, with prices in parentheses. Return an array of prices in float format.

##### Definitions/Rules (explicit and implicit):

* Returned prices must be in float format.
* the array of grocery items will contain the item and the price in parentheses.

##### Input/Output:

* Input: an array of grocery items with price in parentheses.
* Output: an array of the prices in float format.

##### Mental Model:

Take the given array of grocery items and corresponding prices and extract the price information. Collect the prices into an array, ensuring that the price is stored in float format. Note that the dollar sign is removed.

---

#### Examples / Test Cases

```
get_prices(["ice cream ($5.99)", "banana ($0.20)", "sandwich ($8.50)", "soup ($1.99)"]) ➞ [5.99, 0.2, 8.50, 1.99]

get_prices(["salad ($4.99)"]) ➞ [4.99]
```

---

#### Data Structures

##### Input:

* An array of strings.

##### Output:

* An array of floats.

---

#### Algorithm

* It seems we should be able to solve this by mapping the string elements of the input array into the corresponding float elements for the output array.
* Need a way to extract the price information from the string.
* I should be able to use a regular expression and Ruby's match function to extract the string price.

---

#### Code