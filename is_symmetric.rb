# Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
# But the following [1,2,2,null,3,null,3] is not:
#     1
#    / \
#   2   2
#    \   \
#    3    3
# Note:
# Bonus points if you could solve it both recursively and iteratively.

def is_symmetric(root)
    if root.nil? 
        return true
    end
    
    level_nums = dfs_tree(root, 0, [])
    
    level_nums.each {|nums| return false unless is_palindrome(nums)}
    
    return true
end

def dfs_tree(root, level, result)
    if root.nil? && result[level].nil?
        result[level] = [nil]
        return
    elsif root.nil? && !result[level].nil?
        result[level] << nil
        return
    end
    
    if result[level].nil?
        result[level] = [root.val]
    else
        result[level] << root.val
    end
    
    dfs_tree(root.left, level + 1, result)
    dfs_tree(root.right, level + 1, result)
    
    result
end

def is_palindrome(arr)
    arr == arr.reverse
end