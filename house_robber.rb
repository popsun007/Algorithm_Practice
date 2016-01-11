# def rob(nums)
#   if nums.nil? || nums.length === 0
#     return 0
#   end

#   even_house = 0
#   odd_house = 0
#   for i in 0...nums.length
#     if i % 2 === 0
#       even_house = [even_house + nums[i], odd_house].max
#     else
#       odd_house = [odd_house + nums[i], even_house].max
#     end
#   end

#   return [odd_house, even_house].max
# end

#Dynamic programming:
def rob(nums)
  if nums.nil? || nums.length === 0
    return 0
  end

  results = []
  results[0] = 0
  results[1] = nums[0]

  for i in 2..nums.length
    results[i] = [results[i - 1], results[i - 2] + nums[i - 1]].max
  end

  puts results[nums.length]
end

rob([1, 0, 2, 5])