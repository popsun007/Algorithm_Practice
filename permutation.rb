Given a collection of numbers, return all possible permutations.

For example,
[1,2,3] have the following permutations:
[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], and [3,2,1].

def permute(nums)
    if nums === nil || nums.length === 0
        return []
    end
    
    nums.permutation.to_a
    
end