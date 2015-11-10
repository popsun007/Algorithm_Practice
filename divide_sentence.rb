# *
#  * Write a function that takes in a sentence as an argument.
#  * The sentence always contains one comma, which divides
#  * the sentence into two strings.
#  *
#  * The function should return true if the first part of the string
#  * (the part before the comma) ends with second part of
#  * the string (the part after the comma).
#  *
#  * Examples:
#  *
#  *   endsWith("San Francisco,Francisco");
#  *   => true
#  *   endsWith("San Francisco,San");
#  *   => false
#  *   endsWith("San Francisco,Jose");
#  *   => false
#  *   endsWith("San Diego,go");
#  *   => true
#  *   endsWith("Palo Alto,Palo");
#  *   => false
#  *   endsWith("Raise.me,Me");
#  *   => false
#  *
#  * @param  {String} sentence
#  * @return {Bool} true or false
 

def ends_with(str)
  parts = str.split(",")
  second_part_length = parts[1].length #second part length

  if parts[0].length < second_part_length
    return false
  end
  if second_part_length == 0
    return true
  end

  for i in 1..second_part_length
    if parts[0][-i] != parts[1][-i]
      return false
    end
  end
  return true
end

puts ends_with("San Francisco,Francisco")

puts ends_with("San Francisco,San");

puts ends_with("San Francisco,Jose");
 
puts ends_with("San Diego,go");

puts ends_with("Palo Alto,Palo");

puts ends_with("Raise.me,Me");
