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
def level_order(root)
  if root.nil?
    return []
  end
  
  result = []
  level = 0
  traverse(result, root, level)
end

def traverse(result, node, level)
  if node.nil?
    return
  end

  if result[level].nil?
    result[level] = []
  end
    result[level].push(node.val)
  
    traverse(result, node.left, level + 1)
    traverse(result, node.right, level + 1)

    return result
end