def check_inclusion(s1, s2)
  return true if s1.nil?
  return false if s2.nil?
    
  n = s1.length
  i = 0
  while i <= s2.length - n
    mark_s1 = s1
    sub_str = s2[i...i + n]
    j = 0
    puts "mark_s1: " + mark_s1
    while j < n
      unless mark_s1.include? sub_str[j] #Delete only first occurrence element in the string if it has that element
        break
      else
        mark_s1.sub(sub_str[j], "")
      # puts "sub_str: " + sub_str
      end
      j += 1
    end
    if j == n
      return true
    end
      
    i += 1
  end
    
  return false
end
