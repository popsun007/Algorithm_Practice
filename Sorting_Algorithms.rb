#Insertion sort:

def insertion_sort(nums)
  i = 1
  while i < nums.length
    j = i - 1
    compare_item = nums[i]
    
    while compare_item < nums[j] && j >= 0
      nums[j+1] = nums[j]
      j -= 1
    end

    nums[j+1] = compare_item
    i += 1
  end

  print nums
end

#Test
insertion_sort([9,1, 4, 5, 2, 2, 3, 6, 4, 8])
