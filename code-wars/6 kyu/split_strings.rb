# split_strings.rb

def solution(str)
  pairs = []
  str << '_' if str.length.odd?
  until str.empty? do
    pairs << str.slice!(0..1)
  end
  pairs
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("")
