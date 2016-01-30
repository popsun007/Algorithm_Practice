# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  nums.permutation.to_a.map { |e| e.join("").to_i }.sort[-1].to_s
end

print largest_number([3, 30, 34, 5, 9])