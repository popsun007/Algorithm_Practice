Given a binary search tree and the lowest and highest boundaries as L and R, trim the tree so that all its elements lies in [L, R] (R >= L). You might need to change the root of the tree, so the result should return the new root of the trimmed binary search tree.

Example 1:
Input: 
    1
   / \
  0   2

  L = 1
  R = 2

Output: 
    1
      \
       2
Example 2:
Input: 
    3
   / \
  0   4
   \
    2
   /
  1

  L = 1
  R = 3

Output: 
      3
     / 
   2   
  /
 1


def trim_bst(root, l, r)
    if root.nil?
        return root
    end
    
    if root.val > r
        return trim_bst(root.left, l, r)
    end
    
    if root.val < l
        return trim_bst(root.right, l, r)
    end
    
    root.left = trim_bst(root.left, l, r)
    root.right = trim_bst(root.right, l, r)
    
    root
end
