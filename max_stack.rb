class MaxStack
	def initialize
		@stack = []
	end

	def push(x)
		max_value = max
		if max_value.nil? || max_value < x 
			max_value = x
		end

		# Store pushing value and current max vaule as a pair in the stack
		@stack << [x, max_value]
	end

	def pop
		@stack.pop
	end

	def max
		if @stack.empty?
			return nil
		else
			# Access the last pair in the stack in order to get the current max value
			return @stack.last[1]
		end
	end
end

stack = MaxStack.new;
stack.push(1);
stack.push(2);
stack.push(-1);
stack.push(3);
stack.push(5); 
puts stack.max
stack.pop;
puts stack.max
p stack.instance_variable_get(:@stack)