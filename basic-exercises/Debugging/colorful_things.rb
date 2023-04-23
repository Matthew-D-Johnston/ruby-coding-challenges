# colorful_things.rb
# The following code throws an error. Find out what is wrong and think about
# how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook', 'hat']

colors.shuffle!
things.shuffle!

i = 0
loop do 
  break if i == colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# The problem, I believe, is that the 'things' array has less elements
# than the 'color' array, so that in one of the later iterations, 'nil'
# is passed into the string statement, which then raises the exception:
# "no implicit conversion of nil into String (TypeError)". We could fix
# this by adding another thing or deleting one of the colors. The other
# error is that the 'break' line on line 13 specifies that the break 
# occur if the current iteration 'i' is greater than '>' 'colors.length'.
# However, since arrays begin indexing at the value 0, the last iteration
# will be the 9th iteration with i = 8, but there is no value of 8 for 
# the index of either array. Thus, we can fix this by changing '>' to '=='.


