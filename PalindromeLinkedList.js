// Given a singly linked list, determine if it is a palindrome.

// Follow up:
// Could you do it in O(n) time and O(1) space?

 // * Definition for singly-linked list.
 function ListNode(val) {
    this.val = val;
    this.next = null;
 }
 
/**
 * @param {ListNode} head
 * @return {boolean}
 */

//Method 1:

function isPalindrome(head){
	if(head === null){
		return true;
	}

	var list = [],
		current = head;

	while(current !== null){
		list.push(current.val);
		current = current.next;
	}

	for(var i = 0; i < list.length / 2; i++){
		lastIndex = list.length - 1 - i;
		if(list[i] !== list[lastIndex]){
			return false;
		}
	}

	return true;
}

//Method 2: O(n) time and O(1) space
function isPalindrome(head){
	if(head === null){
		return true;
	}

//1: find middle node
	var middle = head,
		fast = head;

	while(fast !== null && fast.next !== null && fast.next.next !== null){
		fast = fast.next.next;
		middle = middle.next;
	}

//2: reverse the latter half of linked list
	var compareList = reverseLinkedList(middle.next);

//3: check is palindrome or not
	var result = true;
	while(compareList !== null){
		if(head.val !== compareList.val){
			result = false;
		}
		head = head.next;
		compareList = compareList.next;
	}

	return result;
}

function reverseLinkedList(head){
	if(head === null || head.next === null){
		return head;
	}

	var current = head,
		prev = null;

	while(current !== null){
		var nextNode = current.next;
		current.next = prev;
		prev = current;
		current = nextNode;
	}

	return prev;
}

headNode = new ListNode(1);
headNode.next = new ListNode(2);
headNode.next.next = new ListNode(2);
headNode.next.next.next = new ListNode(1);

console.log(isPalindrome(headNode));



