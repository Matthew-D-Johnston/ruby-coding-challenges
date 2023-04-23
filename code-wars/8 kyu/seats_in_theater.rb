def seats_in_theater(tot_cols, tot_rows, col, row)
  (tot_cols - (col -1)) * (tot_rows - row)
end

p seats_in_theater(16, 11, 5, 3) == 96
p seats_in_theater(1, 1, 1, 1) == 0
p seats_in_theater(13, 6, 8, 3) == 18
p seats_in_theater(60, 100, 60, 1) == 99
p seats_in_theater(1000, 1000, 1000, 1000) == 0
