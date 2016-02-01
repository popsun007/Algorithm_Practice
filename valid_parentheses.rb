# @param {String} s
# @return {Boolean}
def is_valid(s)
  if s.nil? || s.length === 0
    return true
  end 

  stack = []

  for i in 0...s.length
    if s[i] === "(" || s[i] === "{" || s[i] === "["
      stack.push(s[i])
    elsif stack.length != 0 && stack[-1] === "(" && s[i] === ")"
      stack.pop
    elsif stack.length != 0 && stack[-1] === "[" && s[i] === "]"
      stack.pop
    elsif stack.length != 0 && stack[-1] === "{" && s[i] === "}"
      stack.pop
    else
      return false
    end
  end

  if stack.length === 0
    return true
  else
    return false
  end
  
end