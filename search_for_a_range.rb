# Given a sorted array of integers, find the starting and ending position of a given target value.

# Your algorithm's runtime complexity must be in the order of O(log n).

# If the target is not found in the array, return [-1, -1].

# For example,
# Given [5, 7, 7, 8, 8, 10] and target value 8,
# return [3, 4].


def search_range(nums, target)
    if nums === nil 
        return [-1, -1]
    end
    
    if target === nil || target === nil
        return [0, 0]
    end
    
    low = 0
    high = nums.length - 1
    result = []
    while low + 1 < high
        mid = low + (high - low) / 2
        if nums[mid] === target
            high = mid
        elsif nums[mid] < target
            low = mid
        elsif 
            high = mid
        end
    end
    #Find left index
    if nums[low] === target
        result[0] = low
    elsif nums[high] === target
        result[0] = high
    else
        result = [-1, -1]
    end
    
    low = 0
    high = nums.length - 1
    while low + 1 < high
        mid = low + (high - low) / 2
        if nums[mid] === target
            low = mid
        elsif nums[mid] < target
            low = mid
        elsif 
            high = mid
        end
    end
    #Find right index
    if nums[high] === target
        result[1] = high
    elsif nums[low] === target
        result[1] = low
    else
        result = [-1, -1]
    end

    return result
    
end