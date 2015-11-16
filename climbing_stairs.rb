# You are climbing a stair case. It takes n steps to reach to the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

#Method 1: T(O) = O(n); S(O) = O(n)
def climb_stairs(n)
    if n == nil
        return nil
    end
    if n == 0 || n == 1 || n == 2
        return n
    end
    
    result = [1,2]
    for i in 2...n
        result.push(result[-1] + result[-2])
    end
    return result[-1]
end

#Method 2: T(O) = O(n); S(O) = O(1)
def climb_stairs(n)
    if n == nil
        return nil
    end
    if n == 0 || n == 1 || n == 2
        return n
    end
    
    sum = 2
    prev = 1
    current = 0
    for i in 2...n
        current = sum
        sum += prev
        prev = current
    end
    return sum
end


#Method 3: Recursion + Memorize = Dynamic Programming T(O) = O(n), S(O) = O(n)
def climb_stairs(n)
    if n == nil
        return nil
    end
    
    if n < 3
        return n
    end
    result = {1=>1, 2=>2}
    helper(n, result)
end

def helper(n, result)
    if result[n]
        return result[n]
    end
    
    result[n] = helper(n - 1, result) + helper(n - 2, result)
    return result[n]
end