# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
# def merge_two_lists(l1, l2)
#     result_list = ListNode.new(0)
#     last_node = result_list
#     while l1 && l2  #both not null
#         if l1.val <= l2.val
#             last_node.next = l1
#             l1 = l1.next
#         else
#             last_node.next = l2
#             l2 = l2.next
#         end
#         last_node = last_node.next
#     end
    
#     if l1 != nil
#         last_node.next = l1
#     end
#     if l2 != nil
#         last_node.next = l2
#     end

#     return result_list.next
# end

def merge_two_lists(l1, l2)
    if l1 === nil
        return l2
    end
    if l2 === nil
        return l1
    end
    
    if l1.val < l2.val
        l1.next = merge_two_lists(l1.next, l2)
        return l1
    else
        l2.next = merge_two_lists(l2.next, l1)
        return l2
    end
end

# def merge_two_lists(l1, l2)
#     result_list = ListNode.new(0)
#     last_node = result_list
#     helper(l1, l2, result_list, last_node)
# end

# def helper(l1, l2, result, last_node)
#     if l1 === nil && l2 === nil
#         return result.next
#     end
    
#     if l1 === nil && l2 != nil
#         last_node.next = l2
#         return result.next
#     end
#     if l2 === nil && l1 != nil
#         last_node.next = l1
#         return result.next
#     end
#     if l1.val < l2.val
#         last_node.next = l1
#         l1 = l1.next
#     else
#         last_node.next = l2
#         l2 = l2.next
#     end
#     helper(l1, l2, result, last_node.next)
# end