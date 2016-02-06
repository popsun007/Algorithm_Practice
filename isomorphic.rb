# Given two strings s and t, determine if they are isomorphic.

# Two strings are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

# For example,
# Given "egg", "add", return true.

# Given "foo", "bar", return false.

# Given "paper", "title", return true.

# Note:
# You may assume both s and t have the same length.

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  if s.nil? || s.length === 0
    return true
  end

  memory_s = {}
  memory_t = {}

  for i in 0...s.length
    if memory_s[s[i]] != memory_t[t[i]]
      return false
    end

    memory_s[s[i]] = i
    memory_t[t[i]] = i
  end

  return true
end