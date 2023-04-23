# substring_fun.rb

def nth_char(words)
  final_word = ''

  0.upto(words.size - 1) do |n|
    final_word << words[n][n]
  end

  final_word
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'


