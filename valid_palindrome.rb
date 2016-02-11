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
  arr_s = s.split("")
  while arr_s.length != 0
    first_char = arr_s.shift
    until first_char.ord > 64 && first_char.ord < 123 && arr_s.length != 0 #ignoring cases or space
      first_char = arr_s.shift
    end

    last_char = arr_s.pop
    until last_char.ord > 64 && last_char.ord < 123 && arr_s.length != 0 #ignoring cases or space
      last_char = arr_s.pop
    end

    if first_char != last_char
      return false
    end
  end

  return true
end