# Given an array of integers, find if the array contains any duplicates. Your function should return true 
# if any value appears at least twice in the array, and it should return false if every element is distinct.


Method 1: T(n) = O(n) #Ruby doc: http://ruby-doc.org/core-1.9.3/Array.html#method-i-uniq

def contains_duplicate(nums)
    
  nums.uniq.length != nums.length

end


Method 2: T(n) = O(n), S(n) = O(n)

def contains_duplicate(nums)

    return false if nums.length < 2
    
    new_nums = {}
    
    nums.each_with_index do |num, idx| 
        if new_nums.has_key?(num) 
            return true
        else
            new_nums[num] = idx
        end
    end
    
    return false

end

Method 3: T(n) = O(k), S(n) = O(1)

def contains_duplicate(nums)
    
    nums.sort!
    
    nums.each_with_index {|num,idx| return true if nums[idx] == nums[idx+1] }
    
    return false
    
end