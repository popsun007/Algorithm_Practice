 function search(nums, target){
 	if(nums === undefined || nums.length === 0 || target === undefined){
 		return -1;
 	}

 	var start = 0,
		finish = nums.length - 1;

 	while(start + 1 < finish){
 		var mid = Math.floor(start + (finish - start) / 2);

 		if(nums[mid] === target){
 			return mid;
 		}
 		
 		if(nums[start] < nums[mid]){
 			if(nums[start] <= target && target <= nums[mid]){
 				finish = mid;
 			}
 			else{
 				start = mid;
 			}
 		}
 		else{
 			if(nums[mid] <= target && target <= nums[finish]){
 				start = mid;
 			}else{
 				finish = mid;
 			}
 		}
 	}

 	if(nums[start] === target){
 		return start;
 	}
 	if(nums[finish] === target){
 		return finish;
 	}

 	return -1;
 }