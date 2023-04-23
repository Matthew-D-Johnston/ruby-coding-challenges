# next_polydivisible_num.rb

def next_num(int)
  int += 1 if (int % int.digits.size).zero?

  until poly_divisible?(int)
    int = increment(int)
  end

  int
end

def sub_digits(int)
  digits = int.digits.reverse
  digits_hsh = Hash.new(0)

  digits.size.downto(1) do |key|
    digits_hsh[key] = digits.clone
    digits.pop
  end

  digits_hsh
end

def poly_divisible?(int)
  digits = int.digits.reverse
  results = []

  0.upto(digits.size - 1) do |idx|
    results << (digits[0..idx].join.to_i % (idx + 1)).zero?
    break if !(digits[0..idx].join.to_i % (idx + 1)).zero?
  end

  results.all? { |elem| elem == true }
end

def increment(int)
  num_size = int.digits.size
  non_poly_digit = num_size

  1.upto(num_size) do |key|
    if !(sub_digits(int)[key].join.to_i % key).zero?
      non_poly_digit = key
      break
    end
  end

  
  factor = ('1' + '0'*(num_size - non_poly_digit)).to_i

  ((int / factor) * factor) + factor
end

p next_num(0) #== 1
p next_num(10) #== 12
p next_num(11) #== 12
p next_num(1234) #== 1236
p next_num(123220) #== 123252
p next_num(998)
