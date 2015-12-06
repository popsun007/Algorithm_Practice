def search(value)
	current = this.root

	while current != nil
		if value === current.value
			return true
		elsif value < current.value
			current = current.left
		elsif value > current.value
			current = current.right
		end
	end

	return false
end



def search(value)
	search_helper(root, value)
end

def search_helper(root, value)
	if root.value === value
		return true
	end

	if root.value > value
		search_helper(root.right, value)
	elsif root.value < value
		search_helper(root.left, value)
	end

	return false
end

def delete(value)
	
end