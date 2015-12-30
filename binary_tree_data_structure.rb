module BinaryTree

	class Node
		attr_reader :value
		attr_accessor :left, :right
		def initialize(val)
			@value = val
			@left , @right = nil, nil
		end

		def insert(val)
			if self.value.nil?
				return "Can't insert on nil value"
			end
			
			current = self
			parent_node = self
			while current != nil
				if current.value > val
					parent_node = current
					current = current.left
				elsif current.value < val
					parent_node = current
					current = current.right
				else
					return "Value exist!"
				end
			end

			if parent_node.value > val && parent_node.left === nil
				parent_node.left = Node.new(val)
			else
				parent_node.right = Node.new(val)
			end
		end

		def include?(val)
			current = self
			
			while current != nil
				if current.value === val
					return true
				elsif current.value < val
					current = current.right
				elsif current.value > val
					current = current.left
				end
			end

			return false
		end

		def delete(val)
			if !self.include?
				return "Don't have this node"
			end

			if self.value === val
				return Node.new(nil)
			end
			
			prev = Node.new(nil)
			current = self


		end
	end

end

tree = BinaryTree::Node.new(5)
tree.left = BinaryTree::Node.new(3)
tree.right = BinaryTree::Node.new(7)

test_node = BinaryTree::Node.new(nil)
tree.insert(6)
tree.insert(8)
tree.insert(2)
tree.insert(1)
# puts tree.inspect
# puts tree.include?(8)
