def stock_picker(stock_prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0

  stock_prices.combination(2) do |price_a, price_b|
    if price_b - price_a > max_profit
      max_profit = price_b - price_a
      buy_day = stock_prices.index(price_a)
      sell_day = stock_prices.index(price_b)
    end 
  end 
  [buy_day, sell_day]
end 

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17, 6, 16, 19, 15, 18, 13, 3, 8])
p stock_picker([19, 17, 20, 8, 7, 9, 12, 3, 10])