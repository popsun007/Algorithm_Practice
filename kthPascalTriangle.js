/**
 * @param {number} rowIndex
 * @return {number[]}
 */
var getRow = function(rowIndex) {
	if(rowIndex < 1){
		return [];
	}

	var result = [[1]];
	for(var i = 1; i <= rowIndex; i++){
		result[i] = [];
		result[i][0] = result[i][i] = 1;

		if(i < 2){
			continue;
		}
		for(var j = 1; j < i; j++){
			result[i][j] = result[i -1][j -1] + result[i -1][j];
		}
	}
	return result[rowIndex];
};

console.log(getRow(3));