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

# -------------------------------
# Recursion
def is_symmetric(root)
    root.nil? || check_symmetric(root, root)
end

def check_symmetric(node_l, node_r)
    if node_l.nil? || node_r.nil?
        return node_l == node_r
    end
    
    if node_l.val != node_r.val
        return false
    end
    
    check_symmetric(node_l.left, node_r.right) && check_symmetric(node_l.right, node_r.left)
end

# --------------------------------

# Non-recursion
def is_symmetric(root)
    if root.nil?
        return true
    end
    
    queue = []
    queue << root
    queue << root
    
    until queue.empty?
        node_1 = queue.shift
        node_2 = queue.shift
        
        if node_1.nil? && node_2.nil?
            next
        end
        
        if node_1.nil? || node_2.nil?
            return false
        end
        
        if node_1.val != node_2.val
            return false
        end
        
        queue << node_1.left
        queue << node_2.right
        queue << node_1.right
        queue << node_2.left
    end
    
    return true
end
