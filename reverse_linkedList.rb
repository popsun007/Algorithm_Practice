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

#recursive:
def reverse_list(head, prev=nil, current=nil)

    #initialize prev and current
    if prev == nil && current == nil
        prev = nil 
        current = head
    end
    #base case:
    if current == nil
        head = prev
        return head
    else
        next_node = current.next
        current.next = prev
        prev = current
        current = next_node
        return reverse_list(head, prev, current)
    end

end