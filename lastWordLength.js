/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function(s) {
    if(s === undefined || s.length === 0){
    	return 0;
    }

    resultArr = s.split(" ");
    lastWordIndex = resultArr.length - 1;

    while(lastWordIndex >= 0){
    	if(resultArr[lastWordIndex] === ""){
    		lastWordIndex--;
    	}else{
    		return resultArr[lastWordIndex].length;
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