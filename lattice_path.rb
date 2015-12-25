#Helper method recursion:
def lattice_path(n)
	@count = 0

	def lattice_helper(x, y, n)
		if x === n && y === n
			@count += 1
			return 
		end

		if x > n || y > n
			return
		end

		lattice_helper(x + 1, y, n)
		lattice_helper(x, y + 1, n)
	end

	lattice_helper(0, 0, n)
	return @count
end

# Pure rescursion: top-down

def lattice_path(n, x = nil, y = nil)
	if x.nil?
		x = n
		y = n
	end

	if x === 0 && y === 0
		return 1
	end

	if x < 0 || y < 0
		return 0
	end

	return lattice_path(n, x - 1, y) + lattice_path(n, x, y - 1)
end


# Bottom-up:

def lattice_path(size, x = nil, y = nil)
	if x.nil?
		x = y = 0
	end

	if x === size && y === size
		return 1
	end

	if x > size || y > size
		return 0
	end

	return lattice_path(size, x + 1, y) + lattice_path(size, x, y + 1)
end

puts lattice_path(3)






















