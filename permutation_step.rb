# Using the Ruby language, have the function PermutationStep(num) take the num parameter being passed and return the next number greater than num using the same digits. For example: if num is 123 return 132,
# if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999). 

def PermutationStep(num)
  greaters = []
  num_string = num.to_s.split('')

   perms = num_string.permutation.to_a.each do |ary|
       if ary.join('').to_i > num
         greaters.push(ary.join('').to_i)
       end
     end

  return -1 if greaters.length < 1
  
  return greaters.min
         
end