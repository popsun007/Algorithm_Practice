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
			if !self.include?(val)
				return "Don't have this node"
			end

      new_tree_values = []
      traverse(new_tree_values, self, val)
      print new_tree_values
      new_tree = BinaryTree::Node.new(new_tree_values[0]) # Create a new tree, new_tree_values[0] is root node value
      for i in 1...new_tree_values.length
        new_tree.insert(new_tree_values[i])
      end

      return new_tree
		end

    def traverse(values_arr, root, target)
      if root === nil
        return 
      end

      if root.value != target
        values_arr.push(root.value)
      end

      traverse(values_arr, root.left, target)
      traverse(values_arr, root.right, target)
    end
	end

end

tree = BinaryTree::Node.new(5)
tree.left = BinaryTree::Node.new(3)
tree.right = BinaryTree::Node.new(7)

test_node = BinaryTree::Node.new(nil)
# tree.insert(6)
# tree.insert(8)
# tree.insert(2)
# tree.insert(1)
# tree.delete(1)
# tree.delete(2)
print tree.delete(3).delete(5).inspect
# tree.delete(7)
# puts tree.inspect
# puts tree.include?(8)

