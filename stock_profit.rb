# Suppose we could access yesterday's stock prices as an array, where:

# The indices are the time in minutes past trade opening time, which was 9:30am local time.
# The values are the price in dollars of Apple stock at that time.
# So if the stock cost $500 at 10:30am, stock_prices_yesterday[60] = 500.

# Write an efficient function that takes stock_prices_yesterday and returns the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

# For example:

#   stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

# get_max_profit(stock_prices_yesterday)
# # returns 6 (buying for $5 and selling for $11)

# No "shorting"—you must buy before you sell. You may not buy and sell in the same time step (at least 1 minute must pass).

# Brute force
# 1. Outter loop is the buy price
# 2. Inner loop is the sell price
# 3. find the max profit 

def max_profit(prices)
	if prices.nil? || prices.size < 2
		return "Invalid input"
	end

	max_profit = prices[1] - prices[0] # Intial the max_profit with first min to cover the stock value goes down all day 
	prices.each_with_index do |price, buy_time|
		(buy_time + 1).upto(prices.size - 1) do |sell_time|
			current_profit = prices[sell_time] - prices[buy_time]
			if current_profit > max_profit
				max_profit = current_profit
			end
		end
	end

	return max_profit 
end

# Alternate solution:
def max_profit(prices)
	if prices.nil? || prices.size < 2
		return "Invalid input"
	end

	max_profit = prices[1] - prices[0]
	1.upto(prices.size - 2) do |i|
		max_price = prices[i + 1...prices.size].max
		current_profit = max_price - prices[i]

		if current_profit > max_profit
			max_profit = current_profit
		end
	end

	max_profit
end

# Test cases:
p max_profit([10, 7, 5, 8, 11, 9])
p max_profit([10, 7, 6, 5, 4, 3])