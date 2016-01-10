def rob(nums)
  if nums.nil? || nums.length === 0
    return 0
  end

  even_house = 0
  odd_house = 0
  for i in 0...nums.length
    if i % 2 === 0
      even_house = [even_house + nums[i], odd_house].max
    else
      odd_house = [odd_house + nums[i], even_house].max
    end
  end

  return [odd_house, even_house].max
end

rob([1, 0, 2, 5])