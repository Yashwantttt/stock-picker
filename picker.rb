def stock_picker(array)
  # Initialize variables to track minimum price and maximum profit
  min_price = array[0]
  min_index = 0
  max_profit = 0
  best_days = []

  array.each_with_index do |price, index|
    # Update minimum price and its index
    if price < min_price
      min_price = price
      min_index = index
    end

    # Calculate profit and update maximum profit and best days
    profit = price - min_price
    if profit > max_profit
      max_profit = profit
      best_days = [min_index, index]
    end
  end

  best_days
end

# Example usage:
result = stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
puts "Best days to buy and sell: #{result}" # Output: Best days to buy and sell: [1, 4]
