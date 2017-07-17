Given a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.

Example:

Input: The root of a Binary Search Tree like this:
              5
            /   \
           2     13

Output: The root of a Greater Tree like this:
             18
            /   \
          20     13


def convert_bst(root)
  return root if root.nil?

  stack = []
  sum = 0
  current = root

  while current != nil || !stack.empty?
    if current != nil
      stack.push(current)
      current = current.right
    else
      current = stack.pop
      current.val += sum
      sum = current.val
      current = current.left
    end
  end

  root
end
