# read_error_messages.rb
# You come across the following code. What errors does it raise for the
# given examples and what exactly do the error messages mean?


def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
# the error message we get for this first example is related to the fact that
# we passed six arguments into the method but the method was only defined to
# accept a single argument.

# in order to fix the above we should use:
find_first_nonzero_among([0, 0, 1, 0, 2, 0])

# next example:

find_first_nonzero_among(1)
# in this example we get an error indicating that the '.each' method is not
# defined to take a single fixed number (i.e. integer).

# in order to fix the above we should use:
find_first_nonzero_among([1])
