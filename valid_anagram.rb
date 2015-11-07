# Given two strings s and t, write a function to determine if t is an anagram of s.

# For example,
# s = "anagram", t = "nagaram", return true.
# s = "rat", t = "car", return false.

# Note:
# You may assume the string contains only lowercase alphabets.

# Follow up:
# What if the inputs contain unicode characters? How would you adapt your solution to such case?

#method 1
def is_anagram(s, t)

    return s.split("").sort == t.split("").sort

end

#method 2
def is_anagram(s, t)

    return nil if !s||!t
    return false if s.length != t.length

    chars = [0]*26

    for i in 0...s.length
        idx1 = s[i].ord - 97 
        idx2 = t[i].ord - 97
        chars[idx1] += 1
        chars[idx2] -= 1
    end

    return [0]*26 == chars
    
end

