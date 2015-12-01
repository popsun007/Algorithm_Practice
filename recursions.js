function findMax(arr){
  var maxValue = arr[0];
  
  for(var i = 0; i < arr.length; i++){
    if(maxValue < arr[i]){
      maxValue = arr[i];
    }
  }
  
  return maxValue;
}

function findMaxRecursion(arr){
  var maxValue = arr[0];
  
  function findMaxHelper(arr, position, maxV){
    if (position === arr.length){
      return maxV;
    }
    
    if(arr[position] > maxV){
      maxV = arr[position];
    }
    
    return findMaxHelper(arr, position + 1, maxV);
  }
  
  return findMaxHelper(arr, 0, maxValue);
}


arr = [1, 9, 13, 5, 2];
// var result = findMax(arr);
var result = findMaxRecursion(arr);