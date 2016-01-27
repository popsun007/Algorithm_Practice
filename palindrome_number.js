// Determine whether an integer is a palindrome. Do this without extra space.
/**
 * @param {number} x
 * @return {boolean}
 */

var isPalindrome = function(x) {
	if(x === null || x < 0 || (x !== 0 && x % 10 === 0)){
		return false;
	}

	var reverse_x = 0,
		temp_x = x;

	while(temp_x > 0){
		reverse_x = temp_x % 10 + reverse_x * 10;
		temp_x /= 10;
		temp_x = Math.floor(temp_x);
	}
	return reverse_x === x;
};

console.log(isPalindrome(2026886202));