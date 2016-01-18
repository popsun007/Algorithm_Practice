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
    	}
    	else{
    		return result_arr[lastWordIndex].length;
    	}
    }

    return 0;
};

console.log(lengthOfLastWord("   Hello  world "));