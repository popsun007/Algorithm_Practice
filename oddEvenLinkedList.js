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
var oddEvenList = function(head) {
    if(head === null){
    	return null;
    }
    
    var dummy_odd = new ListNode(null),
        dummy_even = new ListNode(null),
        odd_work = dummy_odd,
        even_work = dummy_even,
        current = head,
        count = 1;
        
    while(current !== null ){
        if(count % 2 !== 0){
            odd_work.next = new ListNode(current.val);
            odd_work = odd_work.next;
        }else{
            even_work.next = new ListNode(current.val);
            even_work = even_work.next;
        }
        
        current = current.next;
        count++;
    }
    
    odd_work.next = dummy_even.next;
    return dummy_odd.next;
};

//Space complexity: O(1)

var oddEvenList = function(head){
	if(head === null){
		return head;
	}

	oddNodes = head;
	evenNodes = head.next;
	evenHead = head.next;

	while(oddNodes.next !== null && evenNodes.next !== null){
        oddNodes.next = oddNodes.next.next;
		evenNodes.next = evenNodes.next.next;
        oddNodes = oddNodes.next;
		evenNodes = evenNodes.next;
	}

	oddNodes.next = evenHead;
	
    return head;
};































