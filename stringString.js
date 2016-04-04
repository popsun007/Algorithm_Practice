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

var strStr = function(haystack, needle) {
    if(needle === undefined || needle.length === 0){
        return 0;
    }
    if(haystack === undefined){
        return -1;
    }
    
    for(var hay_id = 0; hay_id <= haystack.length - needle.length; hay_id++){
        for(var ned_id = 0; ned_id < needle.length; ned_id++){
            if(haystack[hay_id + ned_id] !== needle[ned_id]){
                break;
            }
        }
        if(ned_id === needle.length){
            return hay_id;
        }
    }
    
    return -1;
};

var a = "string";
var b = "abc";
var c = "ring";


console.log(strStr(a, b));

console.log(strStr(a, c));

console.log(strStr(null, c));