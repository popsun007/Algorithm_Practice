# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

# For example,
# "A man, a plan, a canal: Panama" is a palindrome.
# "race a car" is not a palindrome.

# Note:
# Have you consider that the string might be empty? This is a good question to ask during an interview.

# For the purpose of this problem, we define empty string as valid palindrome.
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  if s.nil? || s.length === 0
    return true
  end

  characters = []
  for i in 0...s.length
    dig_s = s[i].ord
    if (dig_s > 64 && dig_s < 91) || (dig_s > 96 && dig_s < 123) || (dig_s > 47 && dig_s < 58) # not alphanumeric characters
      characters.push(s[i])
    end
  end
  print characters.join("")
  puts "----"
  print characters.reverse.join("")
  return characters.join("").downcase === characters.reverse.join("").downcase
end

puts is_palindrome("`l;`` 1o1 ??;l`")