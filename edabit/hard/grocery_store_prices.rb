def get_prices(items)
  return items.map do |item|
    price = /\d+\.\d+/.match(item)[0]
    price.to_f
  end
end

print get_prices(["ice cream ($5.99)", "banana ($0.20)", "sandwich ($8.50)", "soup ($1.99)"])
puts ""
print get_prices(["salad ($4.99)"])
puts ""