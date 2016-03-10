# Problem 1:
# Write a function that takes a string of characters as an argument, and returns a string with all of the vowels reversed.

# Time Complexity: O(n)
# Space Complexity: O(n)

# Example:
# input: “united states”
# output: “enated stitus”

# input: “david”
# output: “divad”


def revserse_vowel(string)
  if string.nil? || string.length === 0
    return string
  end
  
  vowels = ["a", "e", "i", "o", "u"]
  vowels_in_string = []

  for i in 0...string.length
    if vowels.include?(string[i])
      vowels_in_string.push(string[i])
    end
  end

  for j in 0...string.length
    if vowels.include?(string[j])
      string[j] = vowels_in_string.pop
    end
  end

  return string
end


puts revserse_vowel("united states")
puts revserse_vowel("david")