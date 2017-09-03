# Count the number of segments in a string, where a segment is defined to be a contiguous sequence of non-space characters.

# Please note that the string does not contain any non-printable characters.

# Example:

# Input: "Hello, my name is John"
# Output: 5
def count_segments(s)
    result = 0
    if s.nil?
        return result
    end

    s.split(" ").size
end

# Or:
def count_segments(s)
    count = 0
    if s.nil? || s.size == 0
        return count
    end
    
    s.chars.each_with_index do |char, i|
        if char != " " && (i == 0 || s[i - 1] == " ")
            count += 1
        end
    end
    
    count
end

