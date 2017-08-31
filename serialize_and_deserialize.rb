# Serialization is the process of converting a data structure or object into a sequence of bits so that it can be stored in a file or memory buffer, or transmitted across a network connection link to be reconstructed later in the same or another computer environment.

# Design an algorithm to serialize and deserialize a binary search tree. There is no restriction on how your serialization/deserialization algorithm should work. You just need to ensure that a binary search tree can be serialized to a string and this string can be deserialized to the original tree structure.

# The encoded string should be as compact as possible.

# Note: Do not use class member/global/static variables to store states. Your serialize and deserialize algorithms should be stateless.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
    traverse(root, [])
end

def traverse(node, result)
    if node.nil?
        return
    end
    
    result << node.val
    
    traverse(node.left, result)
    traverse(node.right, result)
    
    result.join(",")
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
    if data.nil?
        return nil
    end

    data = data.split(",")
    build_tree(data)
end

def build_tree(queue)
    if queue.empty?
        return nil
    end
    
    node = TreeNode.new(queue.shift.to_i)
    left_queue = []
    right_queue = []
    queue.each do |val|
        val = val.to_i
        if val < node.val
            left_queue << val
        else
            right_queue << val
        end
    end
    
    node.left = build_tree(left_queue)
    node.right = build_tree(right_queue)
    
    node
end
