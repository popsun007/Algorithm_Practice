# Given an array, write a function that will randomize all elements of the

# array. Make sure that your algorithm is unbiased (ie. completely random), 

# and that it remains random even as the input size of the array grows.

# Time Complexity: O(n)

# Space Complexity: O(1)

# Example:

# Input: [1,2,3,4,5]

# Output: [4,1,3,5,2]

def shuffle(arr)

  for i in 0...arr.length
    last_id = arr.length - 1
    r_id = rand(i + 1 .. last_id).to_i
    temp = arr[r_id]
    arr[r_id] = arr[i]
    arr[i] = temp
  end

  return arr

end

print shuffle([1, 2, 3, 4, 5])