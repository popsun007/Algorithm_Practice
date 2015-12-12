# Suppose a sorted array is rotated at some pivot unknown to you beforehand.

# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

# You are given a target value to search. If found in the array return its index, otherwise return -1.

# You may assume no duplicate exists in the array.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    if nums === nil
        return nums
    end
    
    start = 0;
    finish = nums.length - 1;
    
    while start <= finish
        mid = (finish + start) / 2
        if nums[mid] === target
            return mid
        end
        
        if nums[mid] > nums[finish]
            if target < nums[mid] && target >= nums[start]
                finish = mid - 1
            else
                start = mid + 1
            end
        elsif nums[mid] < nums[start]
            if target > nums[mid] && target <= nums[finish]
                start = mid + 1
            else
                finish = mid - 1
            end
        else
            if target > nums[mid]
                start = mid + 1
            else
                finish = mid -1
            end
        end
    end
    
    return -1
end