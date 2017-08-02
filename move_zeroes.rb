Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.

def move_zeroes(nums)
    count = 0

    while nums.find_index(0)
        nums.delete_at(nums.find_index(0))
        count += 1
    end
    count.times do |e|
        nums.push(0)
    end
end

def move_zeroes(nums)
    count = 0
    nums.each do |num|
        count += 1 if num == 0
    end
    
    nums.delete(0)
    
    count.times { nums << 0 }
    
    nums
end

def move_zeroes(nums)
    zero_index = 0
    
    for i in 0...nums.length
        if nums[i] != 0
            nums[zero_index] = nums[i]
            zero_index += 1
        end
    end
    
    while zero_index < nums.length
        nums[zero_index] = 0
        zero_index += 1
    end
    
    nums
end

def move_zeroes(nums)
    swap_zero = 0
    current = 0
    
    while current < nums.length
        if nums[current] != 0
            temp = nums[current]
            nums[current] = nums[swap_zero]
            nums[swap_zero] = temp
            swap_zero += 1
        end
        current += 1
    end
    
    nums    
end
