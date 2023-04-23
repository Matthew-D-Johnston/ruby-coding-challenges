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

print num_grid([
  ["-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-"],
  ["-", "-", "#", "-", "-"],
  ["-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-"]
])

puts ""

print num_grid([
  ["-", "-", "-", "-", "#"],
  ["-", "-", "-", "-", "-"],
  ["-", "-", "#", "-", "-"],
  ["-", "-", "-", "-", "-"],
  ["#", "-", "-", "-", "-"]
])

puts ""

print num_grid([
  ["-", "-", "-", "#", "#"],
  ["-", "#", "-", "-", "-"],
  ["-", "-", "#", "-", "-"],
  ["-", "#", "#", "-", "-"],
  ["-", "-", "-", "-", "-"]
])

