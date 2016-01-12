# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  if n < 1 
    return false
  end

  for i in 0...n
    if 3 ** i === n
      return true
    elsif 3 ** i > n
      break
    end 
  end

  return false
end

#Math O(1):
def is_power_of_three(n)
  test_num = Math.log10(n) / Math.log10(3)
  puts test_num % 1 === 0
end

def is_power_of_three(n)
  test_num = Math.log(n) / Math.log(3)
  puts n === 3 ** test_num.round
end

is_power_of_three(243)