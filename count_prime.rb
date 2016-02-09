# Count the number of prime numbers less than a non-negative number, n.
# @param {Integer} n
# @return {Integer}

# Method 1: 
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


# Method 2: Hash map

def count_primes(n)
  if n <= 2
    return 0
  end

  #Initialize all numbers have not been visited
  visited = {}
  for i in 0...n
    visited[i] = false
  end

  upper = Math.sqrt(n).round
  count = 1

  i = 3
  while i < n
    if !visited[i]
      count += 1

      if i > upper #aviod overflow
        next
      end

      j = i * i 
      # try to speed up. Set all numbers like 2 * i, 3 * i ... i * i are not prime. Why j = i * i? Because 2 * i, 3 * i, 4 * i ... had been visied when set j += i before.
      while j < n
        visited[j] = true
        j += i 
      end

    end
    i += 2 #ignore even numbers
  end

  return count 
end

# Method 2 ruby version:

def count_primes(n)
  visited = [false] * n
  count = 0
  for i in 2...n
    if visited[i]
      next
    end
    count += 1

    (i * i).step n, i do |j|
      visited[j] = true
    end
  end

  return count
end

puts count_primes(1283233)