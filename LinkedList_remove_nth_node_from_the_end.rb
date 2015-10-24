def remove_nth_from_end(head, n)
  return head if !head || n <= 0
  count = 0
  current = head
  nth_node_prev = head
  while current
    if count > n
      nth_node_prev = nth_node_prev.next
    end
    count += 1
    current = current.next
  end
  if count == n # n is == list length
    head = head.next
    return head
  elsif count < n #n > list length
    return head
  end

  nth_node_prev = nth_node_prev.next
  return head
end