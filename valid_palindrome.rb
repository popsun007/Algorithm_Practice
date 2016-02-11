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
    ascii_char = s[i].ord
    if (ascii_char > 64 && ascii_char < 91) || (ascii_char > 96 && ascii_char < 123) || (ascii_char > 47 && ascii_char < 58) # only run if s[i] is an alphanumeric character
      characters.push(s[i].downcase)
    end
  end

  return characters.join("") === characters.reverse.join("")
end

puts is_palindrome("`l;`` 1o1 ??;l`")