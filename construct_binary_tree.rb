# Given preorder and inorder traversal of a tree, construct the binary tree.

# Note:
# You may assume that duplicates do not exist in the tree.

def build_tree(preorder, inorder)
    if inorder.empty?
        return
    end
    
    root_idx = inorder.index(preorder.shift)
    node = TreeNode.new(inorder[root_idx])
    
    node.left = build_tree(preorder, inorder[0...root_idx])
    node.right = build_tree(preorder, inorder[root_idx + 1...inorder.size])
    
    node
end