# Given a roman numeral, convert it to an integer.

# Input is guaranteed to be within the range from 1 to 3999.

def roman_to_int(s)
    nums_map = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000
    }
    sum = 0
    
    for i in 0...s.length
        if i < s.length - 1 && nums_map[s[i]] < nums_map[s[i + 1]] # next element's value biger than current. EX:"IV",current is "I", next element is "V"
            sum -= nums_map[s[i]]
        else
            sum += nums_map[s[i]]
        end
    end
    return sum
end