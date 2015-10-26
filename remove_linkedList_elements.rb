#Remove Linked List Elements
# Remove all elements from a linked list of integers that have value val.

# Example
# Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
# Return: 1 --> 2 --> 3 --> 4 --> 5

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}

method 1:

def remove_elements(head, val)
    dummy = ListNode.new(nil)
    dummy.next = head
    prev = dummy
    while prev.next
        if prev.next.val == val
            prev.next = prev.next.next
        else
            prev = prev.next
        end
    end
    return dummy.next
end

method 2:

def remove_elements(head, val)
    return nil if !head
    current = head
    while current.next
        if current.next.val == val
            current.next = current.next.next
        else
            current = current.next
        end
    end
    if head.val == val
        return head.next
    end
    return head
end

method 3:

def remove_elements(head, val)
    if !head
        return
    end
    dummy = ListNode.new(nil)
    dummy.next = head
    prev = dummy
    while prev.next
        if prev.next.val == val
          prev.next = prev.next.next
        else
          prev = prev.next
        end
    end
    remove_elements(prev.next, val)
    return dummy.next
end