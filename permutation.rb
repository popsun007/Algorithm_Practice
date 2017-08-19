# Given a collection of numbers, return all possible permutations.

# For example,
# [1,2,3] have the following permutations:
# [1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], and [3,2,1].

# # Ruby cheating method:
# def permute(nums)
#     if nums === nil || nums.length === 0
#         return []
#     end
    
#     nums.permutation.to_a
    
# end

# # Recursion with side effects method:
# def permute(nums)
#   if nums.nil? || nums.size === 0
#     return []
#   end

#   result = []
#   record = {}

#   permute_generator(nums, [], result, record)
# end

# def permute_generator(sub_nums, current, result, record)
#   if sub_nums.empty? && record[current].nil?
#     record.store(current, 1)
#     result << current
#     return
#   end

#   for i in 0...sub_nums.length
#     new_sub = sub_nums[0...i] + sub_nums[i + 1...sub_nums.length] # Get new sub_nums without sub_nums[i]
#     permute_generator(new_sub, current + [sub_nums[i]], result, record)
#   end

#   result
# end

# Swap element method:
def permute(nums)
  result = [nums]
  record = {}
  nums.sort!
  terminate = nums.reverse
  generate(nums, result, terminate)
end

def generate(nums, result, terminate)
  if nums == terminate
    return result
  end

  temp_nums = nums.dup # Prevent swap in the same object
  pivot = nil
  swap_idx = nil
  # Find the first ascending pair from the right
  
  (temp_nums.size - 1).downto(1) do |i|
    if temp_nums[i] > temp_nums[i - 1]
      pivot = i
      break
    end
  end
  # All numbers are in descending order, terminate the program
  if pivot.nil?
    return result
  end
    
  # Find the swap number
  (temp_nums.size - 1).downto(pivot) do |i|
    if temp_nums[i] > temp_nums[pivot - 1]
      swap_idx = i
      break
    end
  end

  # Swap pivot - 1 and swap_idx
  temp = temp_nums[pivot - 1]
  temp_nums[pivot - 1] = temp_nums[swap_idx]
  temp_nums[swap_idx] = temp

  # Reverse temp_nums from the pivot to the end 
  temp_nums = temp_nums[0...pivot] + temp_nums[pivot...temp_nums.size].reverse
  
  result << temp_nums

  generate(temp_nums, result, terminate)
end

p permute([1, 1, 2, 3])