You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells). The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

Example:

[[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]

Answer: 16

def island_perimeter(grid)
  retrun grid if grid.nil?

  perimeter = 0
  c = grid[0].length
  i = 0
  while i < grid.length
    j = 0
    while j < c
      if grid[i][j] == 1
        perimeter += 1 if is_valid(grid, i, j+1) #right
        perimeter += 1 if is_valid(grid, i, j-1) #left
        perimeter += 1 if is_valid(grid, i-1, j) #up
        perimeter += 1 if is_valid(grid, i+1, j) #down
      end
      j += 1
    end
    i += 1
  end
  
  perimeter
end

def is_valid(grid, i, j)
  if i < 0 || j < 0 || i >= grid.length || j >= grid[0].length || grid[i][j] == 0
    return true
  end

  return false
end
