You need to construct a string consists of parenthesis and integers from a binary tree with the preorder traversing way.

The null node needs to be represented by empty parenthesis pair "()". And you need to omit all the empty parenthesis pairs that don't affect the one-to-one mapping relationship between the string and the original binary tree.

Example 1:
Input: Binary tree: [1,2,3,4]
       1
     /   \
    2     3
   /    
  4     

Output: "1(2(4))(3)"

Explanation: Originallay it needs to be "1(2(4)())(3()())", 
but you need to omit all the unnecessary empty parenthesis pairs. 
And it will be "1(2(4))(3)".
Example 2:
Input: Binary tree: [1,2,3,null,4]
       1
     /   \
    2     3
     \  
      4 

Output: "1(2()(4))(3)"

Explanation: Almost the same as the first example, 
except we can't omit the first parenthesis pair to break the one-to-one mapping relationship between the input and the output.

Solution:

Method 1 recursion:

def tree2str(t)
  if t == nil
    return ""
  end
  if t.left != nil && t.right == nil
    return t.val.to_s
  end
  if t.right != nil
    return "()" + tree2str(t.right)
  end
  return t.val.to_s + "(" + tree2str(t.left) + ")" + "(" + tree2str(t.right) + ")"
end

Method 2 stack:

def tree2str(t)
  visited = {}
  result = ""
  stack = []
  stack.push(t)
  
  if t.nil?
    return result
  end
  
  while !stack.empty?
    node = stack.last
    if visited[node].nil?
      visited.store(node, 1)
      result += "(" + node.val.to_s
      if node.left.nil? && node.right != nil
        result += "()"
      end
      if node.right != nil
        stack.push(node.right)
      end
      if node.left != nil
        stack.push(node.left)
      end
    else
      stack.pop
      result += ")"
    end
  end
  
  return result[1..-2] #strip () at beginning and end
end
