# Binary Tree Preorder Traversal
# Given a binary tree, return the preorder traversal of its nodes' values.

# For example:
# Given binary tree {1,#,2,3},
#    1
#     \
#      2
#     /
#    3
# return [1,2,3].

# Non-recursion:

def preorder_traversal(root)
    stack = []
    result = []
    if root === nil
        return result
    end
    
    stack.push(root)
    while !stack.empty?
        node = stack.pop
        result.push(node.val)
        if !node.right.nil?
            stack.push(node.right)
        end
        if !node.left.nil?
            stack.push(node.left)
        end
    end
    
    return result
end


# Recursion:

def preorder_traversal(root)
    result = []
    traversal_helper(root, result)
    return result
end

def traversal_helper(root, result)
    if root === nil
        return 
    end
    
    result.push(root.val)
    traversal_helper(root.left, result)
    traversal_helper(root.right, result)
end