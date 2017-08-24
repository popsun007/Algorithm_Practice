class MinStack
	def initialize()
		@min
		@stack = []
	end

	def push(x)
		if @min.nil? || @min > x
			@min = x
		end

		@stack << x
	end

	def top()
		if @stack.empty?
			return nil
		end

		@stack.last
	end

	def pop()
		if @stack.last == @min
			@min = @stack[0...@stack.size - 1].min # Find the new min from the rest of the @stack expect the last number
		end
		@stack.pop
	end

	def get_min()
		if @stack.empty?
			return nil
		end

		@min
	end
end

# Use a 2D array to represent the stack is also an idea. Ex: stack = [[2, -3], [0, -3]]. 
class MinStack
	def initialize
		@stack = []
	end

	def push(x)
		min = get_min
		if min.nil? || min > x 
			min = x
		end

		@stack << [x, min]
	end

	def top
		if @stack.empty?
			return nil
		end

		@stack.last[0]
	end

	def pop
		@stack.pop
	end

	def get_min
		if @stack.empty?
			return nil
		else
			return @stack.last[1]
		end
	end
end
# Test cases:
min_stack = MinStack.new
min_stack.push(2)
min_stack.push(0)
min_stack.push(-3)
min_stack.pop
p min_stack.get_min
