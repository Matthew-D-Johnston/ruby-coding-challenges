# tail_swap.rb

def tail_swap(strings)
  tails = strings.map{ |string| string[(string.index(':') + 1)..-1] }
  first_string_tail_swap = strings.first.gsub(tails.first, tails.last)
  last_string_tail_swap = strings.last.gsub(tails.last, tails.first)
  [first_string_tail_swap, last_string_tail_swap]
end

p tail_swap(["abc:123", "cde:456"]) == ["abc:456", "cde:123"]
p tail_swap(["a:12345", "777:xyz"]) == ["a:xyz", "777:12345"]
