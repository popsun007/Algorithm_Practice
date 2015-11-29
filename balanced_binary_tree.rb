# Given a binary tree, determine if it is height-balanced.

# For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.


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
def is_balanced(root)
    if root === nil 
        return true
    end
    
    if is_balanced(root.left) && is_balanced(root.right) && ((height(root.left) - height(root.right)).abs <= 1)
        return true
    else
        return false
    end
end

def height(root)
    if root === nil
        return 0
    end
    
    return [height(root.left), height(root.right)].max + 1
end