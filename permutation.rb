# Given a collection of numbers, return all possible permutations.

# For example,
# [1,2,3] have the following permutations:
# [1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], and [3,2,1].

# Ruby cheating method:
def permute(nums)
    if nums === nil || nums.length === 0
        return []
    end
    
    nums.permutation.to_a
    
end

# Recursion with side effects method:
def permute(nums)
  if nums.nil? || nums.length === 0
    return []
  end

  result = []
  record = {}

  permute_generator(nums, [], result, record)
end

def permute_generator(sub_nums, current, result, record)
  if sub_nums === []
    if record[current].nil?
      result.push(current)
    end 
    return
  end

  for i in 0...sub_nums.length
    new_sub = sub_nums[0...i] + sub_nums[i + 1...sub_nums.length] #get new sub_nums without sub_nums[i]
    permute_generator(new_sub, current + [sub_nums[i]], result, record)
  end

  return result
end



print permute([1, 1, 2, 3])