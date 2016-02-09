# @param {Integer} n
# @return {Integer}
def count_primes(n)
  count = 0

  for i in 2...n
    if is_prime(i)
      count += 1
    end
  end

  return count    
end

def is_prime(n)
  for i in 2...n
    if n % i === 0
      return false
    end
  end

  return true
end

puts count_primes(1233)