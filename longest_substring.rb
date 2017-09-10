# Given a string, find the length of the longest substring without repeating characters.

# Examples:

# Given "abcabcbb", the answer is "abc", which the length is 3.

# Given "bbbbb", the answer is "b", with the length of 1.

# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

def length_of_longest_substring(s)
  chars = {}
  max = 0
  start = 0
  0.upto(s.size - 1) do |i|
    if chars[s[i]].nil?
      start = [start, 0].max
    else
      start = [start, chars[s[i]] + 1].max
    end
    
    chars.store(s[i], i)
    
    max = [max, i - start + 1].max
  end
  
  max
end