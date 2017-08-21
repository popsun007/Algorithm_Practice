# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

def is_valid(s)
	stack = []
	0.upto(s.size - 1) do |i|
		if s[i] == "(" || s[i] == "[" || s[i] == "{"
			stack << s[i]
			next
		end

		left_p = stack.pop
		if (s[i] == ")" && left_p != "(") || 
			(s[i] == "]" && left_p != "[") || 
			(s[i] == "}" && left_p != "{")

			return false
		end		
	end

	stack.empty? 
end

p is_valid("(){}[]")
p is_valid("({}[]{()}[])")
p is_valid("([)]")
p is_valid(")([]")
p is_valid("(")