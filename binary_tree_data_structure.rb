module BinaryTree

	class Node
		attr_accessor :value, :left, :right
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

    def search(val, node)
      if node.nil?
        return "Don't have this node"
      end

      if node.value === val
        return node
      elsif node.value < val
        search(val, node.right)
      else
        search(val, node.left)
      end
    end

		def delete(val)
			if !self.include?(val)
				return "Don't have this node"
			end

      new_tree_values = []
      traverse(new_tree_values, self, val)

      new_tree = BinaryTree::Node.new(new_tree_values[0]) # Create a new tree, new_tree_values[0] is root node value
      for i in 1...new_tree_values.length
        new_tree.insert(new_tree_values[i])
      end

      self.value = new_tree.value
      self.right = new_tree.right
      self.left = new_tree.left
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

tree.insert(6)
tree.insert(8)
tree.insert(2)
tree.insert(1)

puts tree.inspect

puts "------before and after deletion------"

tree.delete(1)
tree.delete(2)
tree.delete(3)
tree.delete(7)
tree.delete(6)
tree.delete(8)

puts tree.inspect
# puts tree.include?(8)

