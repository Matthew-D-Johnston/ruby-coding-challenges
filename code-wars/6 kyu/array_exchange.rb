# array_exchange.rb

class Array
  def exchange_with!(other_array)
    calling_array = self.clone
    argument_array = other_array.clone

    self.clear
    other_array.clear

    0.upto(calling_array.size - 1) do |idx|
      other_array << calling_array[idx]
    end

    0.upto(argument_array.size - 1) do |idx|
      self << argument_array[idx]
    end

    other_array.reverse!
    self.reverse!
  end
end

# before
my_array = ['a', 'b', 'c']
other_array = [1, 2, 3]

my_array.exchange_with!(other_array)

# after
p my_array == [3, 2, 1]
p other_array == ['c', 'b', 'a']
