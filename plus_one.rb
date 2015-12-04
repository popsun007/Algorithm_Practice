# Given a non-negative number represented as an array of digits, plus one to the number.

# The digits are stored such that the most significant digit is at the head of the list.

# Have you met this question in a real interview? Yes
# Example
# Given [1,2,3] which represents 123, return [1,2,4].

# Given [9,9,9] which represents 999, return [1,0,0,0].


# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    if digits === nil
        return nil
    end
    result = []
    result_string = (digits.join("").to_i + 1).to_s
    
    for i in 0...result_string.length
        result.push(result_string[i].to_i)
    end
    
    return result
end