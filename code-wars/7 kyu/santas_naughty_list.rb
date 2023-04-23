# santas_naughty_list.rb

def find_children(santas_list, children)
  final_list = []
  
  santas_list.each do |santas_pick|
    children.each { |child| final_list << child if child == santas_pick }
  end
  
  final_list.uniq.sort
end 

puts find_children(["Jason", "Jackson", "Jordan", "Johnny"], ["Jason", "Jordan", "Jennifer"]) == ["Jason", "Jordan"]
puts find_children(["Jason", "Jackson", "Johnson", "JJ"], ["Jason", "James", "JJ"]) == ["JJ", "Jason"]