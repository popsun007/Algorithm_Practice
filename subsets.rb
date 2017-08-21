def subset(nums)
  generate(nums, [], 0, [])
end

def generate(nums, temp, position, result)
  result << temp.dup

  position.upto(nums.size - 1) do |i|
    temp << nums[i]
    generate(nums, temp, i + 1, result)
    temp.pop
  end

  result
end


subsets([1,2,4,5])