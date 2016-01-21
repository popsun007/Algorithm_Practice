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
		last_index = list.length - 1 - i;
		if(list[i] !== list[last_index]){
			return false;
		}
	}

	return true;
}

