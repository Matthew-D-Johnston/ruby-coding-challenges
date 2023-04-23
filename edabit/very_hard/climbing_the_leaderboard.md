##### Edabit > Ruby > Very Hard

---

## Climbing the Leaderboard

#### Problem

##### Instructions:

An arcade game player wants to climb to the top of the leaderboard and track their ranking. The game uses Dense Ranking, so its leaderboard works like this:

- The player with the highest score is ranked number **1** on the leaderboard.
- Players who have equal scores receive the same ranking number, and the next player(s) receive the immediately following ranking number.

Create a function that takes two arrays of integers.

```
ranked[[100, 90, 90, 80]]
player[[70, 80, 105]]
```

The ranked players will have ranks **1**, **2**, **2**, and **3**, respectively. If the player's scores are **70**, **80** and **105**, their rankings after each game are **4th**, **3rd** , and **1st**. Return `[[4,3,1]]`.

_Explanation_

```
climbing_leaderboard([100, 100, 50, 40, 40, 20, 10], [5, 25, 50, 120]) ➞ [6, 4, 2, 1]
```

Alice starts playing with 7 players already on the leaderboard, which looks like this:

##### ![snapshot1](https://edabit-challenges.s3.amazonaws.com/1-climbingrank.png)

After Alice finishes game 0, her score is 5 and her ranking is 6: ![snapshot2](https://edabit-challenges.s3.amazonaws.com/2-climbingrank.png)

After Alice finishes game 1, her score is 25 and her ranking is 4: ![snapshot3](https://edabit-challenges.s3.amazonaws.com/3-climbingrank.png)



After Alice finishes game 2, her score is 50 and her ranking is tied with Caroline at 2: ![snapshot4](https://edabit-challenges.s3.amazonaws.com/4-climbingrank.png)

After Alice finishes game 3, her score is 120 and her ranking is 1: ![snapshot5](https://edabit-challenges.s3.amazonaws.com/5-climbingrank.png)

##### Definitions/Rules (explicit and implicit):

* 

##### Input/Output:

* Inputs: the scores of previous players and the successive scores of an individual player.
* Output: the successive rankings of the successive scores of the individual player.

##### Mental Model:

Take the scores of previous players. Eliminate any duplicate scores and sort the scores in descending order. Iterate over the successive scores of the individual player. For each score, add it to the scores of the previous players. Sort the new list of scores. Find the score that was just added and its index. Add one to the index. That is the score's ranking. Store that ranking in an array.  Return the array after each of the player's scores have been ranked.

---

#### Examples / Test Cases

```ruby
climbing_leaderboard([100, 90, 90, 80, 75, 60], [50, 65, 77, 90, 102]) ➞ [6, 5, 4, 2, 1]

climbing_leaderboard([80, 80, 80, 75, 70, 60, 60, 60], [70, 72, 78, 88]) ➞ [3, 3, 2, 1]
```

---

#### Data Structures

##### Input:

* An array of numbers.

##### Output:

* An array of integers.

---

#### Algorithm

* Take the `ranked` array and remove any duplicates.
* Then sort the array.
* Declare a `results` variable and set it equal to an empty array.
* Iterate over the `player` array.
* For each of the player's scores, add them to the `ranked` array.
* Then sort the `ranked` array.
* Find the score that was just added and its index.
* Add one to the index.
* Push that value to the `results` array.
* Remove the number from the `ranked` array.
* After all the `player` scores have been looped over, return the `results` array.

---

#### Code

```ruby
def climbing_leaderboard(ranked, player)
  results = []
  sorted_ranked = ranked.uniq.sort.reverse

  player.each_with_index do |score, idx|
    sorted_ranked.push(score)
    sorted_ranked = sorted_ranked.sort.reverse
    rank_index = sorted_ranked.index(score)
    results.push(rank_index + 1)
    sorted_ranked.delete_at(rank_index)
  end

  results
end
```

