Reverse linked list

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
    if(head === null || head.next === null){
        return head;
    }
    
    result = reverseList(head.next);
    head.next.next = head;
    head.next = null;
    return result;
};

function reverseList(head){
    var prev = null;
    var current = head;
    
    while(current !== null){
        var tempNode = current.next;
        current.next = prev;
        prev = current;
        current = tempNode;
    }
    return prev;
}