# Given a singly linked list, determine if it is a palindrome.

# Follow up:
# Could you do it in O(n) time and O(1) space?

def is_palindrome(head)
	original_head = head.dup
	prev = nil

	until head.nil?
		temp = head.next
		head.next = prev
		prev = head
		head = temp
	end

	reverse_head = prev
	until original_head.nil?
		if original_head.val != reverse_head.val
			return false
		end

		original_head = original_head.next
		reverse_head = reverse_head.next
	end

	return true
end