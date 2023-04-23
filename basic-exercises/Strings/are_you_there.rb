# are_you_there.rb
# Using the following code, print 'true' if 'colors' includes the color
# 'yellow' and print 'false' if it doesn't. Then, print 'true' if 'colors'
# includes the color 'purple' and print 'false' if it doesn't.

colors = 'blue pink yellow orange'

puts colors.split(' ').include?('yellow')
puts colors.split(' ').include?('purple')

# according to the LS solution, you don't even need to include the method
# 'split'. 

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

# further exploration:

colors = 'blue boredom yellow'

puts colors.include?('red')    # this will print 'true' because there is a
                               # 'red' in the word 'boredom'.

                               



