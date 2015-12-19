var subsets = function(nums) {
    if(nums === undefined || nums.length === 0){
        return [];
    }
    
    nums = sort_arr(nums);
    
    var results = [[]];
    
    return subsets_helper(results, nums, 0);
};

function subsets_helper(results, nums, position){
    if(position === nums.length){
        return results;
    }
    
    var temp = [];
    for(var i = 0; i < results.length; i++){
        temp.push(results[i].concat(nums[position]));
    }
    results = results.concat(temp);
    
    return subsets_helper(results, nums,position + 1);
}

function sort_arr(arr){
    if(arr.length <= 1){
        return arr;
    }
    
    var mid = Math.floor(arr.length / 2);
    var left = [];
    var right = [];
    
    for(var i = 0; i < arr.length; i++){
        if(i !== mid){
            if(arr[i] < arr[mid]){
                left.push(arr[i]);
            }
            else{
                right.push(arr[i]);
            }
        }
    }
    
    return sort_arr(left).concat(arr[mid]).concat(sort_arr(right));
}