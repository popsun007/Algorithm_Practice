# Remove element from an array
# Given an array and a value, remove all instances of that value in place and return the new length.

# The order of elements can be changed. It doesn't matter what you leave beyond the new length.

def remove_element(nums, val)
    return nil if !nums 
    # while nums.delete(val)
    #     # nums.delete(val)
    # end
    nums.each {|element| nums.delete(element) if val == element}
    return nums.length
end