Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.

For example:

Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.

Follow up:
Could you do it without any loop/recursion in O(1) runtime?


T = O(n), S = O(1)
def add_digits(num)
    num_str = num.to_s
    
    while num_str.length > 1
        sum = 0
        num_str.split("").each do |element|
            sum += element.to_i
        end
        num_str = sum.to_s
    end
    
    num_str.to_i
end


T = O(1), S = O(1) 
def add_digits(num)
    if num < 10 
        num 
    elsif num % 9 == 0
        9
    else
        num % 9 
    end
end
