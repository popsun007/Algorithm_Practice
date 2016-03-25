// Target Practice - RECURSION

// 1. What are the three recursive architectual patterns covered in class?




// 1.a List the step by step for Helper Method Recursion?




// 1.b Should the recursive case or base case typically be tackled first?




// 2a. Print each item in an array in order using Helper Method of Recursion
// Input: Array
// Output: Undefined
function print(arr){
	printElement(arr, 0);
}

function printElement(arr, idx){
	if(idx === arr.length){
		return;
	}

	console.log(arr[idx]);
	printElement(arr, idx + 1);
}
// Example: print([1,2,3]) => 
// 1
// 2
// 3

// print([1,2,3]);


// 2b. Print each item in an array backwards using Helper Method of Recursion
// Input: Array
// Output: Undefined
function reversePrint(arr){
	if(arr === null || arr.length === 0){
		return arr;
	}

	function backwardPrint(arr, idx){
		if(idx === 0){
			return;
		}

		console.log(arr[idx - 1]);
		backwardPrint(arr, idx - 1);
	}

	backwardPrint(arr, arr.length);
}

// reversePrint([1,2,3]);
// 3
// 2
// 1




// 2c. Reverse a string using Helper Method of Recursion
// Input: String with no spaces
// Output: String
function reverseString(str){
	if(str === null || str.length === 0){
		return str;
	}

	var result = "";
	function backwardLoop(str, idx){
		if(idx === 0){
			return ;
		}

		result += str[idx - 1];

		backwardLoop(str, idx - 1);
	}

	backwardLoop(str, str.length);

	console.log(result);
}
// reverseString('hello');




// 2d. Create tuples from an array using the Helper Method of Recursion
// Input: Array of integers
// Output: Array of tuples
function tuples(arr){
	var result = [];

	function createTuples(arr, idx){
		if(idx >= arr.length){
			if(arr.length % 2 === 0 || (idx - arr.length > 0)){
				return;
			}
		}

		result.push([arr[idx], arr[idx + 1]]);
		createTuples(arr, idx + 2);
	}

	createTuples(arr, 0);

	console.log(result);
}
// tuples([1, 2, 3, 4, 5, 6]);
// tuples([1, 2, 3, 4, 5])




// 2e. Flatten a nested array using the Helper Method of Recursion
// Input: Array of integers and arrays
// Output: Array of integers
function flatten(arr){
	var result = [];

	function flattenArr(arr, idx){
		if(idx === arr.length){
			return;
		}

		for(var i = 0; i < arr.length; i++){
			if(Object.prototype.toString.call( arr[i] ) === '[object Array]'){
				flattenArr(arr[i]);
			}else{
				result.push(arr[i]);
			}
		}
	}

	flattenArr(arr, 0);

	console.log(result);
}
// flatten([1, [2, 3, [4]], 5, [[6]]]) 




// 2f. Power using Helper Method of Recursion
// Input: Two Integers, Base and Exponent
// Output: Integer of result 
function power(base, exponent){
	var result = 1;
	
	function runPower(base, exponent, count){
		if(count === exponent){
			return result;
		}
		result *= base;
		runPower(base, exponent, count + 1);
	}
	runPower(base, exponent, 0);

	console.log(result);
}
power(3, 4) ;




// 2g. Merge two sorted array using the Helper Method of Recursion
// Input: 2 Sorted Arrays
// Output: Sorted Array
function merge(array1, array2){
	var result = [];

	function loopArray(array1,array2){
		if(array1.length === 0){
			result.concat(array2);
			return;
		}else if(array2.length === 0){
			result.concat(array1);
			return;
		}

		var a = array1.shift();
		var b = array2.shift();
		if(a <= b){
			result.push(a);
			array2 = [b].concat(array2);
		}else{
			result.push(b);
			array1 = [a].concat(array1);
		}

		loopArray(array1, array2);
	}

	loopArray(array1, array2);
	console.log(result);
}
merge([1, 4, 7],[2, 3, 6, 9]);

function mergeSortedList(arr1, arr2){
  var result = [];
  
  while(arr1.length > 0 && arr2.length > 0){
    if(arr1[0] > arr2[0]){
      result.push(arr2.shift());
    }
    else{
      result.push(arr1.shift());
    }
  }
  
  if(arr1){
    for(var j = 0; j < arr2.length; j++){
      result.push(arr2[j]);
    }
  }
  if(arr2){
    for(var k = 0; k < arr1.length; k++){
      result.push(arr1[k]);
    }
  }
  
  return result;
}


// 3. What are side effects?




// 3a.-3g. Redo problems 2a.-2g. with Recursion using Side Effects




// 4. How is Pure Recursion different from Recursion w/ Side Effects?




// 4a.-4g. Redo problems 2a.-2g. with Using Pure Recursion