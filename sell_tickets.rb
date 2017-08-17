# Objec­tive: Given ‘N’ win­dows where each win­dow con­tains cer­tain num­ber of tick­ets at each win­dow. Price of a ticket is equal to num­ber of tick­ets remain­ing at that win­dow. Write an algo­rithm to sell ‘k’ tick­ets from these win­dows in such a man­ner so that it gen­er­ates the max­i­mum revenue.

# This prob­lem was asked in the Bloomberg for soft­ware devel­oper position.

# Exam­ple:

# Say we have 6 windows and they have 5, 1, 7, 10, 11, 9 tickets respectively.
# Win­dow Number  1 2 3 4 5 6
# Tick­ets  5 1 7 10  11  9
 

# Sell the first ticket from win­dow 5, since it has 11 tick­ets so cost will be $11.

# Revenue after selling first ticket, MaxRevenue: 11.
# Win­dow Number  1 2 3 4 5 6
# Tick­ets  5 1 7 10  10  9
 

# Sell the sec­ond ticket from win­dow 4 or win­dow 5, since they have 10 tick­ets each so cost will be $10, assume we sell it from win­dow 5.

# Revenue after selling second ticket, MaxRevenue: 21.
# Win­dow Number  1 2 3 4 5 6
# Tick­ets  5 1 7 10  9 9
 

# Sell the third ticket from win­dow 4, since it has 10 tick­ets so cost will be $10.

# Revenue after selling second ticket, MaxRevenue: 31.
# Win­dow Number  1 2 3 4 5 6
# Tick­ets  5 1 7 9 9 9
 

# Sell the fourth ticket from win­dow 4,5 or 6, since they have 9 tick­ets each so cost will be $10.

# Revenue after selling fourth ticket, MaxRevenue: 40.

def max_revenue(windows, tickets)
  revenue = 0
  windows_sorted = windows.sort # Or using Max Heap
  while tickets > 0
    max_price = windows_sorted.pop
    revenue += max_price
    windows_sorted << (max_price - 1)
    windows_sorted.sort!
    tickets -= 1
  end

  revenue
end

p max_revenue([5, 1, 7, 10, 11, 9], 5)