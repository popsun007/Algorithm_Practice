function latticePaths(n, x, y, cache){
	if(x == undefined){
		x = 0;
		y = 0;
		cache = {};
	}
	var key = x + ":" + y;
	if(cache[key] !== undefined){
		return cache[key];
	}
	if( x === n && y === n){
		return 1;
	}
	else if(x > n || y > n){
		return 0;
	}

	cache[key] = latticePaths(n, x + 1, y, cache) + latticePaths(n, x, y + 1, cache);
	return cache[key];
}
console.log(latticePaths(200));
