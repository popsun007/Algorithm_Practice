ven two strings s and t, write a function to determine if t is an anagram of s.

For example,
s = "anagram", t = "nagaram", return true.
s = "rat", t = "car", return false.

Note:
You may assume the string contains only lowercase alphabets.

Follow up:
What if the inputs contain unicode characters? How would you adapt your solution to such case?

def is_anagram(s, t)
  return false unless t.length == s.length

  char_map = []
  26.times {char_map << 0}

  i = 0
  while i < t.length
    char_map[t[i].ord - "a".ord] += 1
    char_map[s[i].ord - "a".ord] -= 1
    i += 1
  end

  char_map.each {|num| return false if num != 0}

  return true
end

follow up:
def is_anagram(s, t)
  return false unless s.length == t.length

  char_map = {}
  i = 0
  while i < s.length
    if char_map[s[i]].nil?
      char_map.store(s[i], 1) 
    else
      char_map[s[i]] += 1
    end
    
    i += 1
  end

  j = 0
  while j < t.length
    if char_map[t[j]].nil?
      return false
    else 
      char_map[t[j]] -= 1
    end

    j += 1
  end

  char_map.each do |key, val| 
    return false if val != 0
  end

  return true
end
