Given two strings s1 and s2, write a function to return true if s2 contains the permutation of s1. In other words, one of the first string's permutations is the substring of the second string.

Example 1:
Input:s1 = "ab" s2 = "eidbaooo"
Output:True
Explanation: s2 contains one permutation of s1 ("ba").
Example 2:
Input:s1= "ab" s2 = "eidboaoo"
Output: False
Note:
The input strings only contain lower case letters.
The length of both given strings is in range [1, 10,000].

Sliding window algorithm:

def check_inclusion(s1, s2)
  return false if s1.length > s2.length

  count_map = []
  26.times { count_map << 0}

  i = 0
  while i < s1.length
    count_map[s1[i].ord - "a".ord] -= 1
    count_map[s2[i].ord - "a".ord] += 1
    i += 1
  end

  return true if check_zero(count_map)

  i = s1.length
  while i < s2.length
    count_map[s2[i].ord - "a".ord] += 1
    count_map[s2[i - s1.length].ord - "a".ord] -= 1
    return true if check_zero(count_map)
      
    i += 1
  end

  return false
end

def check_zero(nums)
  nums.each {|num| return false if num != 0}

  return true
end
