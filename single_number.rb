Given an array of integers, every element appears twice except for one. Find that single one.

Note:
Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

Basic method: time: O(n), spece: O(n)
def single_num(nums)
  return nums if nums.nil?

  records = {}
  nums.each do |num|
    if records[num].nil?
      records.store(num, 1)
    else 
      records.store(num, 2)
    end
  end

  records.each do |key, value|
    if value == 1
      return key
    end
  end
end

XOR method: time: O(n), space: O(1)
def single_num(nums)
  return nums if nums.nil?

  result = 0
  nums.each do |num|
    result = result ^ num
  end

  result
end
