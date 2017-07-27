Given a collection of distinct numbers, return all possible permutations.

For example,
[1,2,3] have the following permutations:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]


def permute(nums)
  return [] if nums.nil?
  generate(nums, [], [])
end

def generate(nums, temp, result)
  if nums.empty?
    result << temp
    return 
  end

  for i in 0...nums.length
    sub_nums = nums[0...i] + nums[i + 1...nums.length] 
    generate(sub_nums, temp + [nums[i]], result)
  end

  result
end
