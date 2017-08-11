// 1. permutation
// 2. sort the nums first
// 3. valid pairs 
// 4. get the max and format
function permutations(nums){
  var result = [];
  var record = {};

  permute(nums, [], result, record);

  return result;
}

function permute(sub_nums, current, result, record){
  if(sub_nums.length === 0){
    if(record[current] === undefined){
      record[current] = true;
      result.push(current);
    }
    return;
  }

  for(var i = 0; i < sub_nums.length; i++){
    var new_sub = sub_nums.slice(0, i).concat(sub_nums.slice(i + 1, sub_nums.length));
    permute(new_sub, current.concat(sub_nums[i]), result, record);
  }

  return result;
}

function convertToStr(nums){
  var result = [];
  for(var i = 0; i < nums.length; i++){
    var num = nums[i].join("");
    result.push(num);
  }
  
  return result;
}

function sortNumber(a,b) {
    return a - b;
}

function validPairs(numStrs){
  valids = [];
  for(var i = 0; i < numStrs.length; i++){
    var numStr = numStrs[i];
    if(Number(numStr) > 2400){
      break;
    }
    if(Number(numStr[2]) > 5 ){
      continue;
    }else{
      valids.push(numStr);
    }
  }
  
  return valids;
}

function solution(A, B, C, D){
  var nums = [A, B, C, D];
  var permutation = permutations(nums);
  var numStrs = convertToStr(permutation);
  var sortStrs = numStrs.sort(sortNumber);
  var valids = validPairs(sortStrs);
  var result = null;
  var lastStr = valids[valids.length - 1];
  
  if (valids.length === 0){
    return "NOT POSSIBLE";
  }else if(lastStr == "2400" && valids.length > 1){
    result = valids[valids.length - 2]; // the second last is the result
  }else{
    result = lastStr; // the last element is the result
  }
  
  if (result != null){
    result = result.slice(0, 2) + ":" + result.slice(2, 4);
    return result;
  }
}

solution(2, 4, 0, 0);
solution(1, 8, 3, 2);
solution(0, 7, 3, 0);
solution(9, 1, 9, 7);