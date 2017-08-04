# Given a 2D array (matrix) inputMatrix of integers, create a function spiralCopy that copies inputMatrix’s values into a 1D array in a spiral order, clockwise. Your function then should return that array. Analyze the time and space complexities of your solution.

# Example:

# input:  inputMatrix  = [ [1,    2,   3,  4,    5],
#                          [6,    7,   8,  9,   10],
#                          [11,  12,  13,  14,  15],
#                          [16,  17,  18,  19,  20] ]

# output: [1, 2, 3, 4, 5, 10, 15, 20, 19, 18, 17, 16, 11, 6, 7, 8, 9, 14, 13, 12]
# See the illustration below to understand better what a clockwise spiral order looks like.

def matrix_spiral(inputMatrix)
  return [] if inputMatrix.nil?

  result = []
  n = inputMatrix.length
  top = 0
  right = inputMatrix[0].length - 1
  bottom = inputMatrix.length - 1
  left = 0

  while top <= bottom && left <= right
	  #copy the top row
	  i = top
	  while i <= right
	  	result << inputMatrix[top][i]
	  	i += 1
	  end

	  #copy the right column 
		i = top + 1
		while i <= bottom 
			result << inputMatrix[i][right]
			i += 1
		end

		#copy the bottom row
		i = right - 1
	  while i >= left
	  	result << inputMatrix[bottom][i]
	  	i -= 1
	  end 

	  #copy the left column
	  i = bottom - 1
	  while i > top
	  	result << inputMatrix[i][left]
	  	i -= 1
	  end

		top += 1
		right -= 1
	  bottom -= 1
	  left += 1
  end

  print result
end

#Test
inputMatrix  = [				 [1,    2,   3,  4,    5],
                         [6,    7,   8,  9,   10],
                         [11,  12,  13,  14,  15],
                         [16,  17,  18,  19,  20] ]

matrix_spiral(inputMatrix)
