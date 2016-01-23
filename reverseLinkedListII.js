// Reverse a linked list from position m to n. Do it in-place and in one-pass.

// For example:
// Given 1->2->3->4->5->NULL, m = 2 and n = 4,

// return 1->4->3->2->5->NULL.

// Note:
// Given m, n satisfy the following condition:
// 1 ≤ m ≤ n ≤ length of list.

var reverseBetween = function(head, m, n) {
	if(head === null){
	    return head;
	}
	
	var count = 1,
		current = head,
		prev = new ListNode(null),
		result = prev,
		reverseEnd = null;
	prev.next = head;

	while(current !== null && count <= n){
		if(m > count){
			prev = prev.next;
		}
		if(count === n){
			reverseEnd = current.next;
			current.next = null;
			break;
		}
		count++;
		current = current.next;
	}

	var reverseNodes = reverseList(prev.next),
		revListEnd = reverseNodes;

	while(revListEnd !== null && revListEnd.next !== null){
		revListEnd = revListEnd.next;
	}
	
	prev.next = reverseNodes;
	revListEnd.next = reverseEnd;

	return result.next;

};

function reverseList(head){
	if(head === null || head.next === null){
		return head;
	}

	var prev = null,
		current = head;

	while(current !== null){
		var nextNode = current.next;
		current.next = prev;
		prev = current;
		current = nextNode;
	}

	return prev;
}