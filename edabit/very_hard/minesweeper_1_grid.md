##### Edabit > Ruby > Very Hard

---

## Minesweeper I — Grid

#### Problem

##### Instructions:

This challenge is based on the game Minesweeper.

Create a function that takes a grid of `#` and `-`, where each hash (#) represents a mine and each dash (-) represents a mine-free spot. Return an array where each dash is replaced by a digit indicating the number of mines immediately adjacent to the spot (horizontally, vertically, and diagonally).

##### Definitions/Rules (explicit and implicit):

* `#`: a mine
* `-`: a mine-free spot
* Adjacent spots includes horizontal, vertical, and diagonal.
* Replace every `-` with a number corresponding to the number of mines in adjacent spots.

##### Input/Output:

* Input: a grid made up of `#`s and `-`s.
* Output: a grid where `-`s are replaced by integers indicating the number of `#`s that are directly adjacent.

##### Mental Model:

Take the input grid. Iterate over each of the nested arrays. Then iterate over each element of each nested array. Use the indexes for both iterations. There will be a number of logical branches. There will be a case for when both indexes are 0. And a case for when one index is 0 and a case for when the other index is 0. There will also be a case for when both indexes are at the maximum length and width of the grid. There will be a case for when one index is at the maximum length and one where the index is at maximum width. There will also be a case when both indexes are neither at 0 nor at the maximum width/length. For each case, determine determine the number of adjacent mines there are for the current case. Then replace the current `-` with the number of adjacent mines. 

---

#### Examples / Test Cases

```ruby
num_grid([
  ["-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-"],
  ["-", "-", "#", "-", "-"],
  ["-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-"]
]) ➞ [
  ["0", "0", "0", "0", "0"],
  ["0", "1", "1", "1", "0"],
  ["0", "1", "#", "1", "0"],
  ["0", "1", "1", "1", "0"],
  ["0", "0", "0", "0", "0"],
]

num_grid([
  ["-", "-", "-", "-", "#"],
  ["-", "-", "-", "-", "-"],
  ["-", "-", "#", "-", "-"],
  ["-", "-", "-", "-", "-"],
  ["#", "-", "-", "-", "-"]
]) ➞ [
  ["0", "0", "0", "1", "#"],
  ["0", "1", "1", "2", "1"],
  ["0", "1", "#", "1", "0"],
  ["1", "2", "1", "1", "0"],
  ["#", "1", "0", "0", "0"]
]

num_grid([
  ["-", "-", "-", "#", "#"],
  ["-", "#", "-", "-", "-"],
  ["-", "-", "#", "-", "-"],
  ["-", "#", "#", "-", "-"],
  ["-", "-", "-", "-", "-"]
]) ➞ [
  ["1", "1", "2", "#", "#"],
  ["1", "#", "3", "3", "2"],
  ["2", "4", "#", "2", "0"],
  ["1", "#", "#", "2", "0"],
  ["1", "2", "2", "1", "0"],
]
```

---

#### Data Structures

##### Input:

* An array with multiple nested arrays, which are made up of `'#'` and `'-'`s.

##### Output:

* An array with multiple nested arrays, made up of `'#'` and strings of integers.

---

#### Algorithm

* Iterate over the outer array using `nested` to denote the nested arrays and `row` to denote the index.
* Then iterate over `nested`, using `elem` to denote the element and `col` to denote the index.
* Create a function that takes a row and column number as well as the outer array and returns `true` if the element contains a `#`. Name this function `spot_contains_mine?`
  * Check if the `array[row][col] == '#'`
* Create a function that takes a row and column number as well as the outer array and returns the number of adjacent spots with mines. Name this function `number_of_adjacent_mines`
  * The function will have separate cases:
  * Declare a `counter` variable and set it equal to `0`.
  * if `row == 0 && col == 0`:
    * Use the `spot_contains_mine?` function for each of the following cases:
      * `row + 1` and `col`
      * `row + 1` and `col + 1`
      * `row` and `col + 1`
    * Increment the counter by `1` each time the function returns `true`
  * if `row == 0 && col != 0`:
    * Use the `spot_contains_mine?` function for each of the following cases:
      * `row` and `col - 1`
      * `row` and `col + 1`
      * `row + 1` and `col - 1`
      * `row + 1` and `col`
      * `row + 1` and `col + 1`
  * if `row != 0 && col == 0`:
  * if `row == max_row && col == max_col`:
  * if `row == max_row && col != max_col`:
  * if `row != max_row && col == max_col`:
  * Else:
    * Use the `spot_contains_mine?` function for each of the following cases:
      * `row - 1` and `col - 1`
      * `row - 1` and `col`
      * `row - 1` and `col + 1`
      * `row` and `col - 1`
      * `row` and `col + 1`
      * `row + 1` and `col - 1`
      * `row + 1` and `col`
      * `row + 1` and `col + 1`
* Take the result of `number_of_adjacent_mines` and convert it to a string.
* Replace that result with the current `-` if it is a `-`



---

#### Code

```ruby
def spot_contains_mine?(row, col, grid)
  grid[row][col] == '#'
end

def number_of_adjacent_mines(row, col, grid)
  max_row = grid.length - 1
  max_col = grid[0].length - 1
  counter = 0

  min_adj_row = row - 1 >= 0 ? row - 1 : nil
  min_adj_col = col - 1 >= 0 ? col - 1 : nil
  max_adj_row = row + 1 <= max_row ? row + 1 : nil
  max_adj_col = col + 1 <= max_col ? col + 1 : nil

  if min_adj_row && min_adj_col
    counter += spot_contains_mine?(min_adj_row, min_adj_col, grid) ? 1 : 0
  end

  if min_adj_row && col
    counter += spot_contains_mine?(min_adj_row, col, grid) ? 1 : 0
  end

  if min_adj_row && max_adj_col
    counter += spot_contains_mine?(min_adj_row, max_adj_col, grid) ? 1 : 0
  end

  if row && min_adj_col
    counter += spot_contains_mine?(row, min_adj_col, grid) ? 1 : 0
  end

  if row && max_adj_col
    counter += spot_contains_mine?(row, max_adj_col, grid) ? 1 : 0
  end

  if max_adj_row && min_adj_col
    counter += spot_contains_mine?(max_adj_row, min_adj_col, grid) ? 1 : 0
  end

  if max_adj_row && col
    counter += spot_contains_mine?(max_adj_row, col, grid) ? 1 : 0
  end

  if max_adj_row && max_adj_col
    counter += spot_contains_mine?(max_adj_row, max_adj_col, grid) ? 1 : 0
  end

  counter
end

def num_grid(grid)
  grid.each_with_index do |nested, row|
    nested.each_with_index do |elem, col|
      if elem != '#'
        grid[row][col] = number_of_adjacent_mines(row, col, grid).to_s
      end
    end
  end

  grid
end
```

