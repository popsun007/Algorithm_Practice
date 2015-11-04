# Invert a binary tree.

#      4
#    /   \
#   2     7
#  / \   / \
# 1   3 6   9
# to
#      4
#    /   \
#   7     2
#  / \   / \
# 9   6 3   1


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}


def invert_tree(root)
    
    return root if root == nil
    
    temp = root.left
    root.left = root.right
    root.right = temp
    
    invert_tree(root.left)
    invert_tree(root.right)
    
    return root
    
end

# or:

def invert_tree(root)
    
    return root if root == nil
    
    temp = root.left
    root.left = invert_tree(root.right)
    root.right = invert_tree(temp)
    
    return root
    
end

