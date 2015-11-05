# Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array 
# such that nums[i] = nums[j] and the difference between i and j is at most k.


def contains_nearby_duplicate(nums, k)
    
    return false if !nums || nums.length < 2 || nums.uniq.length == nums.length
    
    nums.each_with_index do |num, idx|
        (1..k).each do |du_idx|
            if num == nums[idx+du_idx]
                return true
            end
        end
    end
    
    return false
    
end


def contains_nearby_duplicate(nums, k)
    
    return false if !nums || nums.length < 2
    
    nums_sets = {}
    
    nums.each_with_index do |num, idx|
        if nums_sets.has_key?(num) && (idx - nums_sets[num] <= k)
            return true
        else
            nums_sets[num] = idx
        end
    end
    
    return false
    
end