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

print climbing_leaderboard([100, 90, 90, 80, 75, 60], [50, 65, 77, 90, 102])
puts ''
print climbing_leaderboard([80, 80, 80, 75, 70, 60, 60, 60], [70, 72, 78, 88])
puts ''
