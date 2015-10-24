# Given a linked list, remove the nth node from the end of list and return its head.

# For example,

#    Given linked list: 1->2->3->4->5, and n = 2.

#    After removing the second node from the end, the linked list becomes 1->2->3->5.
# Note:
# Given n will always be valid.
# Try to do this in one pass.


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}

#method 1:

def remove_nth_from_end(head, n)
    return nil if n <= 0
    dummy = ListNode.new(0)
    dummy.next = head
    prev_remove = dummy 
    (0...n).each do 
        return nil if !head
        head = head.next
    end
    while head
        head = head.next
        prev_remove = prev_remove.next
    end
    prev_remove.next = prev_remove.next.next
    return dummy.next
end

#method 2:

def remove_nth_from_end(head, n)
    return nil if n <= 0 || !head
    dummy = ListNode.new(0)
    dummy.next = head
    count = 0 
    prev_remove = dummy
    while head 
        if count >= n
            prev_remove = prev_remove.next
        end
        count += 1
        head = head.next
    end

    prev_remove.next = prev_remove.next.next
    return dummy.next
end

#method 3:

def remove_nth_from_end(head, n)
    fast = head
    slow = head
    (0...n).each {|t| fast = fast.next }
    return head.next if !fast # situation about n == list's length
    while fast && fast.next
        slow = slow.next
        fast = fast.next
    end
    slow.next = slow.next.next
    return head
end