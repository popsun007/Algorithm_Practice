# Note: Try to solve this task in-place (with O(1) additional memory), since this is what you'll be asked to do during an interview.

# You are given an n x n 2D matrix that represents an image. Rotate the image by 90 degrees (clockwise).

# Example

# For

# a = [[1, 2, 3],
#      [4, 5, 6],
#      [7, 8, 9]]
# the output should be

# rotateImage(a) =
#     [[7, 4, 1],
#      [8, 5, 2],
#      [9, 6, 3]]
# Input/Output

# [time limit] 4000ms (rb)
# [input] array.array.integer a

# Guaranteed constraints:
# 1 ≤ a.length ≤ 100,
# a[i].length = a.length,
# 1 ≤ a[i][j] ≤ 104.

# [output] array.array.integer



def rotateImage(a)
  return [] if a.nil?
  
  n = a.length
  
  for i in 0...n/2
    for j in 0...3
      temp = a[i][j]
      a[i][j] = a[n-1-j][i]
      a[n-1-j][i] = a[n-1-i][n-1-j]
      a[n-1-i][n-1-j] = a[j][n-1-i]
      a[j][n-1-i] = temp
    end
  end

  return a
end
