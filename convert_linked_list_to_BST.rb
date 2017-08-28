# Given a singly linked list where elements are sorted in ascending order, convert it to a height balanced BST.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {ListNode} head
# @return {TreeNode}

def sorted_list_to_bst(head)
	arr_nums = []

	until head.nil?
		arr_nums << head.val
		head = head.next
	end

	build_bst(arr_nums, 0, arr_nums.size - 1)
end

def build_bst(nums, start_idx, end_idx)
	if start_idx > end_idx
		return 
	end

	mid = start_idx + (end_idx - start_idx) / 2 # Prevent overflow for large index number

	node = TreeNode.new(nums[mid])

	node.left = build_bst(nums, start_idx, mid - 1)
	node.right = build_bst(nums, mid + 1, end_idx)

	node
end