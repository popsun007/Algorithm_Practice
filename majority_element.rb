# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

# You may assume that the array is non-empty and the majority element always exist in the array.


def majority_element(nums)
    majority_count = nums.length/2
    
    for i in 0...nums.length
        count_now = nums.length
        element = nums.delete(nums[i])
        if count_now - nums.length > majority_count
            return element 
        end
    end
end

def majority_element(nums)
    num_count = {}
    
    for i in 0...nums.length
        if num_count.has_key?(nums[i])
            num_count[nums[i]] += 1
        else
            num_count[nums[i]] = 1
        end
        if num_count[nums[i]] > nums.length/2
            return nums[i]
        end
    end
end

def majority_element(nums)
    nums.sort!
    return nums[nums.length/2]
end