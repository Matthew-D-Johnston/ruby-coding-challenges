def fib_seq(num = nil)
  if num == 0
    return []
  end

  if num == nil
    return nil
  end

  if num == 1
    return [0]
  end

  if num == 2
    return [0, 1]
  end

  seq = [0, 1]
  current = 2
  
  while current < num
    curr_fib = seq[current - 1] + seq[current - 2]
    seq.push(curr_fib)
    current += 1
  end

  return seq
end

print fib_seq(4)
puts ""
print fib_seq(7)
puts ""
print fib_seq(0)
puts ""
print fib_seq()
puts ""