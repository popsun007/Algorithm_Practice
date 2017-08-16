def max_depth(root)
  if root.nil?
    return 0
  end

  traverse(root, 0, 0)
end

def traverse(root, current_depth, max_depth)
  if root.nil? && current_depth > max_depth # Becareful if not binary tree
    max_depth = current_depth
    return max_depth
  end

  left_max = traverse(root.left, current_depth + 1, max_depth)
  right_max = traverse(root.right, current_depth + 1, max_depth)

  [left_max, right_max].max
end
