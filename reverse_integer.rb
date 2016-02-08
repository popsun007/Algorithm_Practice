# @param {Integer} x
# @return {Integer}

# Method 1:
# def reverse(x)
#   if x.nil? || x === 0
#     return x
#   end 

#   if x < 0
#     x = -reverse_str(x.to_s[1...x.to_s.length])
#   else
#     x = reverse_str(x.to_s)
#   end
  
#   if x > (2**(0.size * 8 -2) -1) || x < -(2**(0.size * 8 -2)) #greater then max integer Or less then min integer
#     return 0
#   else
#     return x
#   end
# end

# def reverse_str(str)
#   i = 0
#   while i < str.length / 2
#     temp = str[i]
#     last = str.length - 1 - i
#     str[i] = str[last]
#     str[last] = temp
#     i += 1
#   end

#   return str.to_i
# end

# Method 2:
def reverse(x)
  if x.nil? || x === 0
    return x
  end

  if x < 0
    neg = true
    x = -x
  else
    neg = false
  end
  
  result = 0
  while x != 0
    tail = x % 10
    temp_result = result * 10 + tail
    if ((temp_result - tail) / 10) != result 
      return 0
    end
    result = temp_result
    x = x / 10
  end

  if neg === true
    return -result
  else
    return result
  end
end

puts reverse(99799999999999999999999965)