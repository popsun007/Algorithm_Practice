# Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

# For example, this binary tree is symmetric:

#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
# But the following is not:
#     1
#    / \
#   2   2
#    \   \
#    3    3
# Note:
# Bonus points if you could solve it both recursively and iteratively.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    if root === nil
        return true
    end
    
    symmertric_helper(root.left, root.right)
end

def symmertric_helper(left, right)
    if left ===nil && right === nil
        return true
    end
    
    if left === nil || right === nil
        return false
    end
    
    if left.val != right.val
        return false
    end
    
    return symmertric_helper(left.left, right.right) && symmertric_helper(left.right, right.left)
end