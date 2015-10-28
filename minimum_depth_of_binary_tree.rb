# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}

Method 1：Divide and Conquer / DFS

def min_depth(root)
    return 0 if root == nil
    return get_min(root)
end

def get_min(root)
    return (2**(0.size * 8 -2) -1) if root == nil #(2**(0.size * 8 -2) -1) represent the Maximum number in ruby
    return 1 if !root.left && !root.right
    left = get_min(root.left)
    right = get_min(root.right)
    return [left, right].min + 1
end

Method 2: DFS

def min_depth(root)
    if root == nil
        return 0
    elsif !root.left
        return min_depth(root.right) + 1
    elsif !root.right
        return min_depth(root.left) + 1
    end
    
    left = min_depth(root.left)
    right = min_depth(root.right)
    return [left, right].min + 1
end


Method 3: Queue

def min_depth(root)
    
    if !root 
        return 0
    end
    
    queue = []
    level = 0
    queue.push(root)
    
    while queue
        level += 1
        size = queue.count
        size.times do
            node = queue.shift #remove and get the first node in queue
            if !node.left && !node.right
                return level
            elsif node.left
                queue.push(node.left)
            elsif node.right
                queue.push(node.right)
            end
        end
    end
    return level
end