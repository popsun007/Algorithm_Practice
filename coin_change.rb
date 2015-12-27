def coin_change(n)
	@count = 0
	@changes = [1, 5, 10, 25, 50, 100]

	def coin_helper(value, sum, changes)
		if value === sum
			@count += 1
			return 
		elsif sum > value
			return
		end

		for i in 0...changes.length
			coin_helper(value, sum + changes[i], changes[0..i])
		end
	end

	coin_helper(n, 0, @changes)
	return @count
end

puts coin_change(11)