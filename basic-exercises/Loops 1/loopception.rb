# loopception.rb

loop do
  puts 'This is the outer loop.'
                                
  loop do
    puts 'This is the inner loop.'
    break                           # my addition
  end

  break                             # my addition
end


puts 'This is outside all loops.'


# Correct!


