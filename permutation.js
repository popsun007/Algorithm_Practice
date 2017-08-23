function permutations(nums){
	permute(nums, [], []);

	return result;
}

function permute(sub_nums, current=[], result=[]){
	if(sub_nums.length == 0){
		result.push(current.slice());
		return;
	}


	for(var i = 0; i < sub_nums.length; i++){
		var new_sub = sub_nums.slice(0, i).concat(sub_nums.slice(i + 1, sub_nums.length));
		permute(new_sub, current.concat(sub_nums[i]), result);
	}

	return result;
}

console.log(permutations([1, 2, 3]));