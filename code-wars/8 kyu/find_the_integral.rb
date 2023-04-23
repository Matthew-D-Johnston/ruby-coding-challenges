def integrate(coeff, exp)
  "#{coeff / (exp + 1)}x^#{exp + 1}"
end

p integrate(3, 2) == "1x^3"
p integrate(12, 5) == "2x^6"
p integrate(20, 1) == "10x^2"
p integrate(40, 3) == "10x^4"
p integrate(90, 2) == "30x^3"