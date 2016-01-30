# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  if nums.nil? || nums.length === 0
    return ""
  end
  nums.permutation.to_a.map { |e| e.join("").to_i }.sort[-1].to_s
end

def largest_number(nums)
  if nums.nil? || nums.length === 0
    return ""
  end
  
  nums.map(&:to_s).sort{|a, b| a + b <=> b + a}.reverse.join("").to_i.to_s
end
print largest_number([3, 30, 34, 5, 9])