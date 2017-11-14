#Given an array and a value, remove all instances of that value in-place and return the new length.

#Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

#The order of elements can be changed. It doesn't matter what you leave beyond the new length.

def remove_element(nums, val)
  instance_val_pointer = 0

  for i in (0...nums.size) do
    if nums[i] != val
      nums[instance_val_pointer] = nums[i]
      instance_val_pointer += 1
    end
  end
    
  return instance_val_pointer
end
