# Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this in place with constant memory.

# For example,
# Given input array nums = [1,1,2],

# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.

def remove_duplicates(nums)
    if nums == nil || nums == []
        return 0
    end
        
    count = 0
    
    for i in 1...nums.length
        if nums[i] == nums[i - 1]
            count += 1
        end
        nums[i - count] = nums[i]
    end
    return nums.length - count
end

#two pointers

def remove_duplicates(nums)
    if nums == nil || nums.length == 0
        return 0
    end
    
    idx = 0
    for i in 0...nums.length
        if nums[i] != nums[idx]
            idx += 1
            nums[idx] = nums[i]
        end
    end
    return idx + 1
end