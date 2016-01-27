/**
 * @param {number} x
 * @return {boolean}
 */

var isPalindrome = function(x) {
    if(x === null || (x > -10 && x < 10)){
    	return true;
    }

    x = Math.abs(x);
    var count_ten = 0,
		last_digit = x,
		first_digit = x;

    while(first_digit > 10){
    	console.log(first_digit);
    	first_digit = first_digit / 10;
    	first_digit = Math.floor(first_digit);
    	count_ten++;
    }

    first_digit = Math.floor(first_digit);
    
    if(first_digit !== last_digit){
    	return false;
    }

    x = x - first_digit * Math.pow(10, count_ten) - last_digit;
    return isPalindrome(x);
};

console.log(isPalindrome(2026886202));