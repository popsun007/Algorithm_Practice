# Given a string and an integer k, you need to reverse the first k characters for every 2k characters counting from the start of the string. If there are less than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and left the other as original.
# Example:
# Input: s = "abcdefg", k = 2
# Output: "bacdfeg"
# Restrictions:
# The string consists of lower English letters only.
# Length of the given string and k will in the range [1, 10000]

def reverse_str(s, k)
  if s.nil?
    return nil
  end
      
  i = 0
  while i < s.size 
    swap_idx = [i + k - 1, s.size - 1].min
    reverse(s, i, swap_idx)
      
    i += (2 * k)
  end
  
  s
end

def reverse(s, s_idx, e_idx)
  while s_idx < e_idx
    temp = s[s_idx]
    s[s_idx] = s[e_idx]
    s[e_idx] = temp
    
    s_idx += 1
    e_idx -= 1
  end
end