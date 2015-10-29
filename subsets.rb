def subsets(nums)
  results = [[]]

  nums.sort.each do |num|
    temp = results.map do |result|
      result + [num]
    end
    results += temp
  end

  return results
end

#Alternative:
def subsets(nums)
  results = [[]]
  nums.sort.each {|num| results += results.map {|result| result + [num] }}
  return results
end

# def subsets(nums)
#     nums = nums.sort
#     result = [[]]
#     list = []
#     subsets_helper(result, list, nums, 0)
#     return result
# end

# def subsets_helper(result, list, nums, idx)
#     if idx == nums.length
#         result.push(list)
#         return 
#     end

#     list = list.push(nums[idx])
#     # print list
#     subsets_helper(result, list, nums, idx+1)
#     print result.to_s + "\n"
#     # print list

#     list.delete_at(list.length - 1)
#     # print list
#     # subsets_helper(result, list, nums, idx+1)
#     # print result

# end


# def subsets(nums)
#     result = [[]]
#     return result if !nums || nums.length == 0
#     list = []
#     nums = nums.sort
#     subsets_helper(result, list, nums, 0)
#     return result
# end

# def subsets_helper(result, list, nums, idx)
    
#     result.push(list)
#     i = idx.to_i
#     while i < nums.length
#         list.push(nums[i])
#         print result.to_s + "\n"   
#         subsets_helper(result, list, nums, i+1)
#         # print result.to_s + "\n"
#         list.pop
#         print result.to_s + "\n"
#         i+=1
#     end
# end



subsets([1,2,4,5])