# Implement strStr().

# Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.


def str_str(haystack, needle)
  if haystack.nil? || needle.nil?
  	return -1
  end

  0.upto(haystack.size - needle.size) do |i|
  	count = 0
  	j = 0
  	while j < needle.size 
  		unless haystack[i + j] == needle[j]
  			break
  		end

  		count += 1
  		j += 1
  	end

  	if count == needle.size
  		return i
  	end
  end

  return -1
end