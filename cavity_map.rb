# Problem Statement

# You are given a square map of size n×n. Each cell of the map has a value denoting its depth. We will call a cell of the map a cavity if and only if this cell is not on the border of the map and each cell adjacent to it has strictly smaller depth. Two cells are adjacent if they have a common side (edge).

# You need to find all the cavities on the map and depict them with the uppercase character X.

# Input Format

# The first line contains an integer, n, denoting the size of the map. Each of the following n lines contains n positive digits without spaces. Each digit (1-9) denotes the depth of the appropriate area.

# Constraints 
# 1≤n≤100
# Output Format

# Output n lines, denoting the resulting map. Each cavity should be replaced with character X.

# Sample Input

# 4
# 1112
# 1912
# 1892
# 1234
# Sample Output

# 1112
# 1X12
# 18X2
# 1234
# Explanation

# The two cells with the depth of 9 fulfill all the conditions of the Cavity definition and have been replaced by X.

#!/bin/ruby

n = gets.strip.to_i
grid = Array.new(n)
for grid_i in (0..n-1)
    grid[grid_i] = gets.strip
end

results = []

for i in 0...n * n
	row = i / n
	col = i % n
	if row > 0 && col > 0 && row < (n - 1) && col < (n - 1)
		target = grid[row][col]
		if grid[row][col - 1] < target && grid[row][col + 1] < target && grid[row - 1][col] < target && grid[row + 1][col] < target
			results.push([row, col])
		end
	end
end

results.each do |coordinate|
	grid[coordinate[0]][coordinate[1]] = "X"
end

puts grid