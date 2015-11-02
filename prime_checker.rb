# Using the Ruby language, have the function PrimeChecker(num) take num and return 1 
# if any arrangement of num comes out to be a prime number, otherwise return 0. 
# For example: if num is 910, the output should be 1 because 910 can be arranged into 109 or 019, 
# both of which are primes. 


def PrimeChecker(num)
  num = num.to_s.split('')
  perm = num.permutation(num.size).to_a
  perm.each do |p|
    return 1 if is_prime?(p.join.to_i)    
  end
  return 0
end

def is_prime?(number)
  i = 2
  while i < number
    if number % i == 0
      return false
    end
    i += 1
  end
  return true
end