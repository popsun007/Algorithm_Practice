// SNAKES word search problem

// S-N B S-N
//   |   | |
// B A-K-E A
//   |     |
// B K B B K
//   |     |
// S-E B S-E

// Write a function CountNumberOfQueryWordsInGrid(q, G) that takes in a query word q and a grid of letters G and returns how many times q appears in G where we allow for 90 degree turns in word paths. 
// For example, the grid G could be like above and q=”SNAKES”, which would result in a return value of 3 (the three paths are highlighted with edges above).
var findNumberOfQuery = function(q, G){
	
	var xEnd = G.length - 1;
	var yEnd = G[0].length - 1;
	var result = 0;

	function findPath(xCoor, yCoor, temp){
		if(xCoor === xEnd && yCoor === yEnd){
			return;
		}else if(xCoor > xEnd || yCoor > yEnd || xCoor < 0 || yCoor < 0){
			return;
		}
			temp += G[xCoor][yCoor];
		
		if(temp === q){
			result++;
			temp = "";
			return;
		}
			console.log(temp);
		// xAround = [-1, -1, -1, 0, 0, 1, 1, 1];
		// yAround = [-1, 0, 1, -1, 1, -1, 0, 1];
		// for(var i = 0; i < 8; i++){
		// 	temp += G[xCoor][yCoor];
		// 	if(xCoor + xAround[i] < 0 || yCoor + yAround[i] < 0 || yCoor + yAround[i] > yEnd || xCoor + xAround[i] > xEnd){
		// 		continue;
		// 	}
		// 	next_step = temp + G[xCoor + xAround[i]][yCoor + yAround[i]];
		// 	next_step_len = temp.length;
		// 	if(next_step === q.slice(0, next_step_len)){
		// 		findPath(xCoor + xAround[i], yCoor + yAround[i], temp);
		// 	}
		// }
		findPath(xCoor + 1, yCoor, temp);
		findPath(xCoor, yCoor + 1, temp);
		// findPath(xCoor - 1, yCoor, temp);
		// findPath(xCoor, yCoor - 1, temp);
	}

	findPath(0, 0, "");

	return result;
};

G = [
		// ["s", "n", "a", "k", "e"],
		["s", "n", "b", "s", "n"],
		["b", "a", "k", "e", "a"],
		["b", "k", "b", "b", "k"],
		["s", "e", "b", "s", "e"]
	  ];

console.log(findNumberOfQuery("snakes", G));