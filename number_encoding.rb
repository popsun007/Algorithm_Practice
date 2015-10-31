# Using the Ruby language, have the function NumberEncoding(str) take the str parameter and encode the message according to the following 
# rule: encode every letter into its corresponding numbered position in the alphabet. Symbols and spaces will also be used in the input. 
# For example: if str is "af5c a#!" then your program should return 1653 1#!.


def NumberEncoding(str)

  result = ""
  letter = ("a".."z").to_a
  position = (1..26).to_a
  
  str.split("").each do |i|
    if letter.include?(i)
    result << position[letter.index(i)].to_s 
    else
      result << i
    end
  end
  
  return result

end