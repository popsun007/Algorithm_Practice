# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  #2 * 5 = 10, and n include 2's number always > 5's number, so we can just count 5, then we can get the trailing zeroes
  
  if n.nil? || n <= 0
    return 0
  end
  
  count_five = 0
  
  i = 1
  power_of_five = 5
  while n >= power_of_five
    count_five += n / power_of_five
    i += 1
    power_of_five = 5 ** i
  end

  return count_five
end

print trailing_zeroes(100)
print trailing_zeroes(28376)