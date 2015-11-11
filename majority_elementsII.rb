# Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times. 
# The algorithm should run in linear time and in O(1) space.

def majority_element(nums)
    result = []
    count1 = 0
    count2 = 0
    candidate1 = nil
    candidate2 = nil
    
    if nums == nil || nums.empty?
        return result
    end
    
    #find two or less majority element
    nums.each do |num|
        if num == candidate1
            count1 += 1
        elsif num == candidate2
            count2 += 1
        elsif count1 == 0
            count1 += 1
            candidate1 = num
        elsif count2 == 0
            count2 += 1
            candidate2 = num
        else
            count1 -= 1
            count2 -= 1
        end
    end
    
    #find how many times the majorities appear
    count1 = 0
    count2 = 0
    nums.each do |num|
        if num == candidate1
            count1 += 1
        end
        if num == candidate2
            count2 += 1
        end
    end
    
    if count1 > nums.length/3
        result.push(candidate1)
    end
    if count2 > nums.length/3
        result.push(candidate2)
    end
    return result
end