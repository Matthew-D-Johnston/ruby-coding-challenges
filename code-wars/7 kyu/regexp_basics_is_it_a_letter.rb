# regexp_basics_is_it_a_letter.rb

class String
  def letter?
    self.size == 1 ? self.match?(/[a-z]/i) : false
  end
end

p "".letter? == false
p "a".letter? == true
p "X".letter? == true
p "7".letter? == false
p "*".letter? == false
p "ab".letter? == false
p "a\n".letter? == false