Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

def two_sum(nums, target)
    hash_map = {}
    result = []
    
    nums.each_with_index do |num, idx|
        if hash_map[target - num] != nil
            result << hash_map[target - num]
            result << idx
        end
        
        hash_map.store(num, idx)
    end
    
    result
end
