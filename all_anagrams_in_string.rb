Given a string s and a non-empty string p, find all the start indices of p's anagrams in s.

Strings consists of lowercase English letters only and the length of both strings s and p will not be larger than 20,100.

The order of output does not matter.

Example 1:

Input:
s: "cbaebabacd" p: "abc"

Output:
[0, 6]

Explanation:
The substring with start index = 0 is "cba", which is an anagram of "abc".
The substring with start index = 6 is "bac", which is an anagram of "abc".
Example 2:

Input:
s: "abab" p: "ab"

Output:
[0, 1, 2]

Explanation:
The substring with start index = 0 is "ab", which is an anagram of "ab".
The substring with start index = 1 is "ba", which is an anagram of "ab".
The substring with start index = 2 is "ab", which is an anagram of "ab".

def find_anagrams(s, p)
    result = []
    return result if s.length < p.length
    
    char_map = []
    26.times {char_map << 0}
    i = 0
    while i < p.length
        char_map[p[i].ord - "a".ord] += 1
        char_map[s[i].ord - "a".ord] -= 1
        i += 1
    end
    
    if all_zero(char_map)
        result << 0
    end
    
    j = 0
    while j < s.length - p.length
        char_map[s[j].ord - "a".ord] += 1
        char_map[s[j + p.length].ord - "a".ord] -= 1
        if all_zero(char_map)
            result << j + 1
        end
        
        j+= 1
    end

    result
end

def all_zero(nums)
    nums.each {|num| return false if num != 0}
    
    return true
end
