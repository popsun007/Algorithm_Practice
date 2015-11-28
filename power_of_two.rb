Given an integer, write a function to determine if it is a power of two.

# @return {Boolean}
def is_power_of_two(n)
    if n === nil || n < 1
        return false;
    end
    
    i = 0
    while 2**i <= n
        if 2**i === n
            return true
        end
        i += 1
    end
    return false
end