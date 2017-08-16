Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

Integers in each row are sorted from left to right.
The first integer of each row is greater than the last integer of the previous row.
For example,

Consider the following matrix:

[
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
Given target = 3, return true.

#Binary search

def search_matrix(matrix, target)
  if matrix.nil? || target.nil? || matrix.size == 0 ||matrix[0].size == 0
      return false
  end

  # Find the row target maybe in
  start_row = 0
  end_row = matrix.size - 1
  last_element = matrix[0].size - 1
  target_row = nil
  while start_row + 1 < end_row
    mid_row = start_row + (end_row - start_row) / 2
    if matrix[mid_row][last_element] == target 
      return true
    elsif matrix[mid_row][last_element] < target
      start_row = mid_row
    else
      end_row = mid_row
    end
  end
    
  if matrix[start_row][last_element] >= target
    target_row = start_row
  elsif matrix[end_row][last_element] >= target
      target_row = end_row
  else
    return false
  end
  
  # Find the element in the row
  start_elem = 0
  end_elem = matrix[0].size - 1
  while start_elem + 1 < end_elem
    mid_elem = start_elem + (end_elem - start_elem) / 2
    if matrix[target_row][mid_elem] == target
      return true
    elsif matrix[target_row][mid_elem] < target
      start_elem = mid_elem
    else
      end_elem = mid_elem
    end
  end

  if matrix[target_row][start_elem] == target
    return true
  end
    
  if matrix[target_row][end_elem] == target
    return true
  end
  
  false
end
