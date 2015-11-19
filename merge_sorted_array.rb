# Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

# Note:
# You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.


def merge(nums1, m, nums2, n)
    p1 = m - 1
    p2 = n - 1
    last = m + n - 1
    
    while p1 >= 0 && p2 >= 0
        if nums1[p1] >= nums2[p2]
            nums1[last] = nums1[p1]
            p1 -= 1
        else
            nums1[last] = nums2[p2]
            p2 -= 1
        end
        last -= 1
    end
    
    while p2 >= 0
        nums1[last] = nums2[p2]
        last -= 1
        p2 -= 1
    end
end