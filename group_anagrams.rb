Given an array of strings, group anagrams together.

For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"], 
Return:

[
  ["ate", "eat","tea"],
  ["nat","tan"],
  ["bat"]
]
Note: All inputs will be in lower-case.


def group_anagrams(strs)
  result = []
  strs_sort = {}
  for i in 0...strs.length
    str_sorted = strs[i].chars.sort.join
    if strs_sort[str_sorted].nil?
      strs_sort.store(str_sorted, [strs[i]])
    else
      strs_sort[str_sorted] << strs[i]
    end
  end

  strs_sort.each do |key, val|
    result << val
  end

  result 
end

