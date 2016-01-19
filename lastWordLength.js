/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function(s) {
    if(s === undefined || s.length === 0){
    	return 0;
    }

    result_arr = s.split(" ");
    lastWordIndex = result_arr.length - 1;

    while(lastWordIndex >= 0){
    	if(result_arr[lastWordIndex] === ""){
    		lastWordIndex--;
    	}else{
    		return result_arr[lastWordIndex].length;
    	}
    }

    return 0;
};

var lengthOfLastWord = function(s){
	if(s === undefined || s.length === 0){
		return 0;
	}

	var count = 0;

	for(var i = s.length - 1; i >= 0; i--){
		if(s[i] === " " && count !== 0){
			break;
		}else if(s[i] != " "){
			count++;
		}
	}

	return count;
};

console.log(lengthOfLastWord("   hello world    "));