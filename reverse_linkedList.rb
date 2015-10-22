#iterative solution:
def reverse_list(head)
    
    #node is nil
    if !head
        return head
    end
    
    prev = nil
    current = head
    while current 
        next_node = current.next
        current.next = prev
        prev = current 
        current = next_node
    end
    head = prev
    return head
    
end