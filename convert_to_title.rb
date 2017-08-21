# Given a positive integer, return its corresponding column title as appear in an Excel sheet.

# For example:

#     1 -> A
#     2 -> B
#     3 -> C
#     ...
#     26 -> Z
#     27 -> AA
#     28 -> AB 
#     ...
#     56 -> BD
#     57 -> BE
#     58 -> BF

def convert_to_title(n)
  if n.nil?
  	return nil
  end

  if n <= 26 
  	return ("A".ord + n - 1) .chr
  end

  result = ""
  while n > 0
  	current_char = ("A".ord + (n - 1) % 26).chr
  	result = current_char + result
  	n = n / 26
  end

  result
end

p convert_to_title(56)
p convert_to_title(18456)

# 1. Get the last title 
# 	n % 26

# 2. Get the second last title
#   n - last_title / 26

# 3. loop 2 until n is 0
# 1-26
# 26-26*27
# 703 - 26*27*27