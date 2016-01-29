/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function(s) {
    if(s === null || s.length === 0){
    	return true;
    }
    var check = [];
    for(var i = 0; i < s.length; i++){
    	if(s[i] === "(" || s[i] === "[" || s[i] === "{"){
    		check.push(s[i]);
    	}else if(s[i] === ")" && check.length !== 0 && check[check.length - 1] === "(" ){
    		check.pop();
    	}else if(s[i] === "]" && check.length !== 0 && check[check.length - 1] === "[" ){
    		check.pop();
    	}else if(s[i] === "}" && check.length !== 0 && check[check.length - 1] === "{" ){
    		check.pop();
    	}else{
    		return false;
    	}
    }

    if(check.length === 0){
    	return true;
    }else{
    	return false;
    }
};

console.log(isValid("{(())}[()]"));