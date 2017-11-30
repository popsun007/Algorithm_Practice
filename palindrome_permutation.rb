Given a string, determine if a permutation of the string could form a palindrome.

For example,
"code" -> False, "aab" -> True, "carerac" -> True.

def can_permute_palindrome(s)
    chars_map = {}
    count = 0
    
    for i in (0...s.size) do 
        if chars_map[s[i]].nil?
            chars_map.store(s[i], 1)
        else
            chars_map[s[i]] += 1
        end
    end
    
    # A palindrome must has uniq char no more than 1
    chars_map.each do |key, val|
        unless val % 2 == 0
            count += 1
        end
    end
    
    return count <= 1
end
