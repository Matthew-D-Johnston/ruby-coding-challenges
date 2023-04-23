# casino_chips.rb

# def solve(chips)
#   day_counter = 0

#   loop do
#     break if chips.count(0) >= 2
#     chips.sort!

#     chips[2] -= 1
#     chips[1] -= 1
#     day_counter += 1
#   end

#   day_counter
# end

def solve(chips)
  small_pile = chips.min
  big_piles = chips.sort[1..2]
  days = 0

  if big_piles.first == big_piles.last
    small_pile.even? ? days += small_pile : days += (small_pile - 1)
    days += big_piles.first - (small_pile / 2)
  else
    big_piles_difference = big_piles.last - big_piles.first

    if big_piles_difference <= small_pile
      days += big_piles_difference
      small_pile -= big_piles_difference
      small_pile.even? ? days += small_pile : days += (small_pile - 1)
      days += big_piles.first - (small_pile / 2)
    else
      days += small_pile
      days += big_piles.first
    end
  end

  days
end

p solve([1,1,1]) == 1
p solve([1,2,1]) == 2
p solve([4,1,1]) == 2
p solve([8,2,8]) == 9
p solve([8,1,4]) == 5
p solve([7,4,10]) == 10
p solve([12,12,12]) == 18
p solve([1,23,2]) == 3
