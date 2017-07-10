Class LinkedList
  attr_accessor :val :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def reverse_linkedList (head, new_node=nil)
  if head.nil?
    return new_node
  end

  next_node = head.next
  head.next = new_node
  reverse_linkedList(next_node, head)
end
