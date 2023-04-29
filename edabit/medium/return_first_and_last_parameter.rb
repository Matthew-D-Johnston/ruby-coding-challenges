def first_arg(*params)
  params[0]
end

def last_arg(*params)
  params.last()
end

puts first_arg(1, 2, 3)
puts last_arg(1, 2, 3)
puts first_arg(8)
puts last_arg(8)
