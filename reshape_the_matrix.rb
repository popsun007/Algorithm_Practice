def matrix_reshape(nums, r, c)
  if nums.nil?
    return nums
  end

  nums_r = nums.length
  nums_c = nums[0].length

  if nums_r * nums_c != r * c
    return nums
  end

  result = []
  r.times {result << []}
  i = 0
  while i < r * c
    result[i/c][i%c] = nums[i/nums_c][i%nums_c]
    i += 1
  end
  
  result
end
