# s: ""The quick, brown fox jumped over the lazy dog. And we have a superlongword.""
# limit: 10
# result: [
#    "The quick,",
#    "brown fox",
#    "jumped",
#    "over the",
#    "lazy dog.",
#    "And we",
#    "have a",
#    "superlongword."
# ]

# "The quick,"
# "brown" (fox)

def wrap_words(s, limit)
  result = []
  words = s.split(" ")

  line = []
  j = 0

  while j < words.size
    line << words[j]

    # Use join(" ") to add space to the string
    if line.join(" ").size > limit && line.size == 1 # When the word length is longer than the limit
      result << line.join(" ")
      line = []
    elsif line.join(" ").size > limit
      line.pop
      result << line.join(" ")
      line = []
      next
    end

    if j == words.size - 1 && line != []# When we reach the end of the array
      result << line.join(" ")
    end

    j += 1
  end

  p result
end

s = "The quick, brown fox jumped over the lazy dog. And we have a superlongword."
wrap_words(s, 10)
