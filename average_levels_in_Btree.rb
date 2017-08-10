ven a non-empty binary tree, return the average value of the nodes on each level in the form of an array.

Example 1:
Input:
    3
   / \
  9  20
    /  \
   15   7
Output: [3, 14.5, 11]
Explanation:
The average value of nodes on level 0 is 3,  on level 1 is 14.5, and on level 2 is 11. Hence return [3, 14.5, 11].
Note:
The range of node's value is in the range of 32-bit signed integer.

DFS method 1:
def average_of_levels(root)
    sums = level_sum(root, 0, {})

    result = []
    sums.each do |level, val|
        result[level] = val
    end

    level_nums = count_nums(root, 0, [])

    i = 0
    while i < result.length
        result[i] = result[i].to_f / level_nums[i]
        i += 1
    end
    
    result
end

def level_sum(node, level, sums)
    if node.nil?
        return 
    end
    
    if sums[level].nil?
        sums.store(level, node.val)
    else
        sums[level] += node.val
    end
    
    level_sum(node.left, level + 1, sums)
    level_sum(node.right, level + 1, sums)
    
    sums
end

def count_nums(node, level, nums)
    if node.nil?
        return
    end
    
    if nums[level].nil?
        nums[level] = 1
    else
        nums[level] += 1
    end
    
    count_nums(node.left, level + 1, nums)
    count_nums(node.right, level + 1, nums)
    
    nums
end

DFS method 2:
def average_of_levels(root)
    count_sum = dfs(root, 0, [], [])
    
    sums = count_sum[0]
    counts = count_sum[1]
    result = []
    for i in 0...counts.length
        result << sums[i].to_f / counts[i]
    end
    
    result
end

def dfs(node, level, counts, sums)
    if node.nil?
        return
    end
    
    if level == counts.length #new level, need to initialize first
        counts[level] = 1
        sums[level] = node.val
    else
        counts[level] += 1
        sums[level] += node.val
    end
    
    dfs(node.left, level + 1, counts, sums)
    dfs(node.right, level + 1, counts, sums)
    
    [sums, counts]
end

BFS method 3:

def average_of_levels(root)
    result = []
    queue = []
    queue << root
    
    while !queue.empty?
        temp_queue = []
        sum = 0
        count = 0
        while !queue.empty?
            current = queue.shift
            sum += current.val
            if !current.left.nil?
                temp_queue << current.left
            end
            
            if !current.right.nil?
                temp_queue << current.right
            end
            
            count += 1
        end
        
        queue = temp_queue
        result << (sum.to_f / count)
    end
    
    result
end
