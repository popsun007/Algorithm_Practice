function strStr(string1, string2){
	if(string1 === null || string2 === null){
		return 0;
	}

	for(var i = 0; i <= string1.length - string2.length; i++){
		
		for(var j = 0; j < string2.length; j++){
			if(string1.charAt(i + j) !== string2[j]){
				break;
			}
			if(j === (string2.length - 1)){
				return 1;
			}
		}

	}

	return 0;
}

var a = "string";
var b = "abc";
var c = "ring";


console.log(strStr(a, b));

console.log(strStr(a, c));

console.log(strStr(null, c));