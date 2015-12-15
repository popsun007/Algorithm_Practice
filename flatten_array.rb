 # *
 #  *                       Problem V: Flatten
 #  *
 #  *  Prompt: Given a list of lists, flatten the nested lists.
 #  *
 #  *  Input: A list of lists (array of nested arrays)
 #  *  Ouput: An array (flattened lists)
 #  *
 #  *  Example:
 #  *
 #  *    Input: [[1,9],[3,4],[5,[6,[7]]]]
 #  *    Output: [1,9,3,4,5,6,7]
 #  *

def flatten(arr)
  result = []
  flatten_helper(arr, result)
end

def flatten_helper(arr, result)
  for i in 0...arr.length
    if arr[i].class == Array
      flatten_helper(arr[i], result)
    else
      result.push(arr[i])
    end
  end

  return result
end

arr = [[1,9],[3,4],[],[[5],[6,[7]]]]
print flatten(arr)