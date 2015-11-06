# Given a column title as appear in an Excel sheet, return its corresponding column number.

# For example:

#     A -> 1
#     B -> 2
#     C -> 3
#     ...
#     Z -> 26
#     AA -> 27
#     AB -> 28 

def title_to_number(s)
    return nil if !s || s.length == 0
    
    sum = 0
    for i in 0...s.length
        if i == s.length - 1
            sum += s[i].upcase.ord - 64
        else
            sum += (s[i].upcase.ord - 64) * 26**(s.length - i - 1) 
        end
    end
    
    return sum
end