Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.

If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascending order).

The replacement must be in-place, do not allocate extra memory.

Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
1,2,3 → 1,3,2
3,2,1 → 1,2,3
1,1,5 → 1,5,1

def next_permutation(nums)
  pivot = nil
  swap_idx = nil
  # Find the first ascending pivot
  (nums.size - 1).downto(1) do |i|
    if nums[i] > nums[i - 1]
      pivot = i
      break
    end
  end

  if pivot.nil?
    return nums.reverse!
  end

  # Find the first  number is bigger than (pivot - 1) number in the range from  pivot + 1 to the end
  (nums.size - 1).downto(pivot) do |j|
    if nums[j] > nums[pivot - 1]
      swap_idx = j
      break
    end
  end

  # Swap pivot - 1 with swap_idx
  unless swap_idx.nil?
    temp = nums[pivot - 1]
    nums[pivot - 1] = nums[swap_idx]
    nums[swap_idx] = temp
  end

  # Reverse the new sequence from pivot to the end
  # Make it in ascending order
  mid = pivot + (nums.size - 1 - pivot) / 2
  pivot.upto(mid) do |i|
    temp = nums[i]
    nums[i] = nums[nums.size - 1 + pivot - i]
    nums[nums.size - 1 + pivot - i] = temp
  end
    
  nums
end
