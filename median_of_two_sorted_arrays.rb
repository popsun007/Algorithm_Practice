# There are two sorted arrays nums1 and nums2 of size m and n respectively.

# Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

# Example 1:
# nums1 = [1, 3]
# nums2 = [2]

# The median is 2.0
# Example 2:
# nums1 = [1, 2]
# nums2 = [3, 4]

# The median is (2 + 3)/2 = 2.5

def find_median_sorted_arrays(nums1, nums2)
  if nums1.nil? || nums2.nil?
    return nil
  end
    
  merge_arr = merge_arrays(nums1, nums2)
  n = merge_arr.size
  if n % 2 == 0
    return ((merge_arr[n / 2] + merge_arr[n / 2 - 1]).to_f / 2).round(2)
  else
    return (merge_arr[n / 2]).to_f.round(2)
  end
end

def merge_arrays(nums1, nums2)
  result = []
  until nums1.empty? || nums2.empty?
    num1 = nums1.first
    num2 = nums2.first
    if num1 < num2
      result << nums1.shift
    else
      result << nums2.shift
    end
  end
  
  if nums1.empty?
    result += nums2
  else
    result += nums1
  end
  
  result
end