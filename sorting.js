function bubbleSort(arr){
  var temp;
  for(var i = 0; i < arr.length; i++){
    var swap = false;
    
    for(var j = 0; j < arr.length - i; j++){

      if(arr[j] > arr[j + 1]){
        temp = arr[j + 1];
        arr[j + 1] = arr[j];
        arr[j] = temp;
        swap = true;
      }
    }
    
    if(swap === false){
      break;
    }
  }
}


function insertionSort(arr){
  for(var i = 0; i < arr.length; i++){
    var compare_idx = i;
    
    while ((compare_idx > 0) && (arr[compare_idx] < arr[compare_idx - 1])){
      var temp = arr[compare_idx];
      arr[compare_idx] = arr[compare_idx - 1];
      arr[compare_idx - 1] = temp;
      compare_idx--;
    }
  }
}


function insertionSortOfficial(arr){
  var value;
  for(var i = 0; i < arr.length; i++){
    value = arr[i];
    
    for(var j = i - 1; j >= 0 && arr[j] > value; j--){
        arr[j + 1] = arr[j];
    }

    arr[j + 1] = value;  
  }
}

function selectionSort(arr){
  var min = 0;
  for(var i = 0; i < arr.length; i++){

    for(var j = i + 1; j < arr.length; j++){
      if (arr[j] <= arr[min]){
        min = j;
      }
    }
    
    if ((min > i) && (arr[min] < arr[i])){
      var temp = arr[i];
      arr[i] = arr[min];
      arr[min] = temp;
    }
  }
}



var arr = [3, 9, 7, 1, 4];
var arr1 = [1,2,3,4,5,6];
bubbleSort(arr);
// insertionSortOfficial(arr);
// selectionSort(arr);
console.log(arr);