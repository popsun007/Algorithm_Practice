class Node

    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end

end

class ListNode
    attr_accessor :head, :next
    #initialize a list
    def initialize(val)
        @head = Node.new(val)
        @head.next = nil
    end

    # insert_node is a helper method
    def insert_node(val)
        new_node = Node.new(val) 
        return @head if !@head # head is nil
        current = @head
        while current.next
          current = current.next
        end
        current.next = new_node #current is the tail now, and set the tail.next with a new node
        return @head
    end

    # shift_node is also a helper method
    def shift_node
        return @head if !@head # head is nil
        result = @head.val
         @head = @head.next
        return result
    end

    #display is also a helper method to show List in terminal
    def display
        return "List is empty!" if !@head #list is nil
        current = self.head
        list = []
        while current
          list.push(current.val)
          current = current.next
        end
        puts list.join("->")
    end



    #iterative solution:
    def reverse_list
        #node is nil
        if !@head
            return @head
        end
        
        prev = nil
        current = @head
        while current 
            next_node = current.next
            current.next = prev
            prev = current 
            current = next_node
        end
        @head = prev
        return @head 
    end

    #recursive:
    def reverse_list_recursive(head, prev=nil, current=nil)
        #initialize prev and current
        if prev == nil && current == nil
            prev = nil 
            current = @head
        end
        #base case:
        if current == nil
            @head = prev
            return @head
        else
            next_node = current.next
            current.next = prev
            prev = current
            current = next_node
            return reverse_list_recursive(@head, prev, current)
        end
    end

    # def size
    #     current = self.head
    #     length = 0
    #     while current
    #         length += 1
    #         current = current.next
    #     end
    #     puts length  
    #     return length
    # end

    def merge_sort(head)
        length = 0
        current = head
        while current
            length += 1
            current = current.next
        end
        if length == 1
            return head
        end
        mid = length/2
        cut = 1
        # current = head
        left = Node.new(nil)
        while cut != mid
            left.insert_node(current.val)
            cut += 1
            current = current.next
        end
        right = current.next
        # current.next = nil
        # left = current
        arrange(merge_sort(left), merge_sort(right))
    end

    def arrange(left, right)
        sorted_list = ListNode.new(nil)
        while left.val && right.val
            if left.val >= right.val
                node_val = right.val
                right = right.next
                sorted_list.insert_node(node_val)
            else
                node_val = left.val
                left = left.next
                sorted_list.insert_node(node_val)
            end
        end
        while left.val
            node_val = left.val
            sorted_list.insert_node(node_val)
            left = left.next
        end
        while right.val
            node_val = right.val
            sorted_list.insert_node(node_val)
            right = right.next
        end
        return sorted_list
    end

end

list = ListNode.new(3)
# print list
list.insert_node(4)
# print list
list.insert_node(-1)
list.insert_node(2)
list.insert_node(39)
list.insert_node(3)
list.display
# list.shift_node
# list.shift_node
# list.display
# list.reverse_list
# list.display
# list.reverse_list_recursive(list)
# list.display
# list.size

# list = ListNode.new(nil)
# list.insert_node(3)
# list.display

#sort list
# list.merge_sort(list)
# list.display


