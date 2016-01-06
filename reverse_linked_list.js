/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var reverseList = function(head) {
    if(head === null){
        return head;
    }
    var prev = null,
    current = head;
    
    while(current !== null){
        var next_node = current.next;
        current.next = prev;
        prev = current;
        current = next_node;
    }
    
    return prev;
};