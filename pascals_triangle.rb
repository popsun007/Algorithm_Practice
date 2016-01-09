# Given numRows, generate the first numRows of Pascal's triangle.

# For example, given numRows = 5,
# Return

# [
#      [1],
#     [1,1],
#    [1,2,1],
#   [1,3,3,1],
#  [1,4,6,4,1]
# ]


# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  if num_rows < 0 
      return nil
  end

  result = []
  
  for i in 0...num_rows
    result[i] = []
    result[i][0] = result[i][i] = 1

    for j in 1...i
      result[i][j] = result[i - 1][j - 1] + result[i - 1][j]
    end

  end

  return result
end

