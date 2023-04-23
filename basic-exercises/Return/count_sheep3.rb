# count_sheep3.rb
# What will the following code print? Why? Don't run it until you've
# attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep     # Will print 0 to 2, and then another 2, to the screen. (incorrect)


# printed 0 to 2, and then nil. If there was a sheep following the call to
# return then it would have printed 2 twice. But because there is no value
# specified following the return call, it returns nil.






