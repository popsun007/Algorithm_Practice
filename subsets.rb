#Method Recursion1:
def subsets(nums)
    if nums === nil 
        return nums
    end
    nums.sort!
    result = []
    helper([], 0, nums, result)
    return result
end

def helper(current, depth, nums, result)
    if depth === nums.length
        result.push(current)
        return 
    end
        
    helper(current, depth + 1, nums, result)
    helper(current + [nums[depth]], depth + 1, nums, result)
end


#Method Rcursion2:
def subsets(nums)
    
    nums.sort!
    result = []
    subset_helper(0, 0, result, nums)
    return result
    
end

def subset_helper(start, level, result, nums)

    return if level == nums.length
    result.push(result)
    nums.each do |num|
        subset_helper(start+1, level+1, result + [num], nums)
    end

end



# def subsets(nums)
#   results = [[]]

#   nums.sort.each do |num|
#     temp = results.map do |result|
#       result + [num]
#     end
#     results += temp
#   end

#   print results
# end

#Alternative:
#def subsets(nums)
#  results = [[]]
#  nums.sort.each {|num| results += results.map {|result| result + [num] }}
#  return results
#end

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