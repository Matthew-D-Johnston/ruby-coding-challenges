# which_collection.rb
# Rewrite 'car' as a nested array containing the same key-value pairs.

car = {
  type:   'sedan',
  color:  'blue',
  year:   2003
}

# Rewritten:

auto = {car: {type: 'sedan', color: 'blue', year: 2003}} #Oops, supposed to be an array.

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]

p car



