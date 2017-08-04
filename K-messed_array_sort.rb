

def k_sort_arr(nums)
  return [] if nums.nil?
  
  for i in 0...nums.length-2
    fir = i
    snd = i + 1
    trd = i + 2
  
    if nums[fir] > nums[snd]
      swap(nums, fir, snd)
    end
    if nums[snd] > nums[trd]
      swap(nums, snd, trd)
    end
    if nums[fir] > nums[snd]
      swap(nums, snd, fir)
    end
  end
  
  print  nums
end

def swap(arr, a, b)
  temp = arr[a]
  arr[a] = arr[b]
  arr[b] = temp
end

k_sort_arr([1, 4, 5, 2, 3, 7, 8, 6, 10, 9])
