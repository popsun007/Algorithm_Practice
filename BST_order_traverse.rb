# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order_bottom(root)
  if root === nil
      return []
  end
  traverse(root, 0, [])
end

def traverse(root, level, result)
  if root === nil
    return
  end

  if level === result.length
    result.push([])
  end

  result[level].push(root.val)

  traverse(root.left, level + 1, result)
  traverse(root.right, level + 1, result)
  
  result_reverse = []
  for i in 0...result.length
    result_reverse[result.length - 1 - i] = result[i] # swap the result 
  end
  
  return result_reverse
end