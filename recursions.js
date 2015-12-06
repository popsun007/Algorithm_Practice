 /** 
  *                       Recursion I: Additional Problems
  *
  *  Intro: The best way to learn and master recursion is to practice on lists.
  *         As such, we will use arrays to pracitice in JavaScript, Ruby and Python as arrays
  *         are actually dynamic arrays in these languages (we will learn more on this later in the course!).
  *
  *         Why?  It is easiest to see traversing and operating upon lists through an iterative solution (for loop),
  *         therefore it is easy to find and understand one solution to the problem.  However, it is also quite simple to
  *         traverse and operate through a list using recursion, which makes this exercise an excellent opportunity to
  *         learn recursion.
  *
  *  Instructions:  For each of the following problems, first solve them in an iterative way first (ie. set up a for loop
  *                 first and access each element by position that way).  Second, implement a recursive solution to the 
  *                 problem.  Third, compare your two solutions and think about how you had to transition from an iterative
  *                 solution to a recursive one.
  *
  *                 After doing this enough times, you will start to recognize how to solve problems both iteratively and
  *                 recursively very quickly, and finding recursive solutions will become a much more simple process!
  **/

 /**
  *                       Problem I: Find Max Value
  *
  *  Prompt: Given a list of integers, find the max value contained in the list.
  *
  *  Input: A list (array)
  *  Ouput: An integer (max value)
  *
  *  Example:
  *
  *    Input: [1,9,3,4,5]
  *    Output: 9
  **/


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

 /**
  *                       Problem II: Count Occurences
  *
  *  Prompt: Given a list of elements, count the occurences of a specific element inside the list
  *
  *  Input: A list (array), Element (Int or Str)
  *  Ouput: An integer (occurence of element)
  *
  *  Example:
  *
  *    Input: [1,9,3,4,5,1], 1
  *    Output: 2
  **/

function countOccurences(arr, element){
  var count = 0;
  if (arr === null){
    return count;
  }

  
  for(var i = 0; i < arr.length; i++){
    if (arr[i] === element){
      count += 1;
    }
  }
  
  return count;
}

function countOccurencesRecursion(arr, element){
  var count = 0;
  if(arr === null){
    return count;
  }
 
  countHelper(arr, element, 0);
  
  function countHelper(arr, element, position){
    if(position === arr.length){
      return count;
    }
    
    if(arr[position] === element){
      count += 1;
    }
    
    return countHelper(arr, element, position + 1);
  }
  
  return count;
}


// console.log(countOccurencesRecursion(arr, 4));


 /**
  *                       Problem III: Reverse List Order
  *
  *  Prompt: Given a list of elements, reverse the order of the list.
  *          Try this problem by reversing both in place and by creating a new output array.
  *
  *  Input: A list (array)
  *  Ouput: A list (reversed input array)
  *
  *  Example:
  *
  *    Input: [1,9,3,4,5]
  *    Output: [5,4,3,9,1]
  **/

function reverseList(arr){
  if(arr === null){
    return arr;
  }
  
  var result = [];
  
  for(var i = arr.length - 1; i >= 0; i--){
    result.push(arr[i]);
  }
  
  return result;
}

function reverseListRecursion(arr){
  var result = [];
  
  reverseHelper(arr.length - 1);
  
  function reverseHelper(position){
    if(position === -1){
      return ;
    }
    
    result.push(arr[position]);
    return reverseHelper(position - 1);
  }
  
  return result;
}

function reverseListRecursion2(arr){
  
  function reverseHelper(position){
    if(position >= arr.length / 2){
      return arr;
    }
    
    var temp = arr[position];
    arr[position] = arr[arr.length - 1 - position];
    arr[arr.length - 1 - position] = temp;
    return reverseHelper(position + 1);
  }
  return reverseHelper(0);
}

// arr = [1,9,3,4,5];
// console.log(reverseListRecursion2(arr));


 /**
  *                       Problem IV: Add List Values
  *
  *  Prompt: Given a list of integers, return the sum of all the values in the list.
  *
  *  Input: A list (array)
  *  Ouput: An integer (sum of values in list)
  *
  *  Example:
  *
  *    Input: [1,9,3,4,5]
  *    Output: 22
  **/


function getSum(arr){
  var sum = 0;
  
  for(var i = 0; i < arr.length; i++){
    sum += arr[i];
  }
  
  return sum;
}

function getSumRecursion(arr){
  var sum = 0;
  
  function sumHelper(position){
    if(position === arr.length){
      return sum;
    }
    
    sum += arr[position];
    return sumHelper(position + 1);
  }
  
  return sumHelper(0);
}

// var arr = [1, 9, 3, 4, 5];
// console.log(getSum(arr));
// console.log(getSumRecursion(arr));



 /**
  *                       Problem V: Flatten
  *
  *  Prompt: Given a list of lists, flatten the nested lists.
  *
  *  Input: A list of lists (array of nested arrays)
  *  Ouput: An array (flattened lists)
  *
  *  Example:
  *
  *    Input: [[1,9],[3,4],[5,[6,[7]]]]
  *    Output: [1,9,3,4,5,6,7]
  **/

function flatten(arr){
  var result = [];
  
  flattenHelper(arr);
  
  function flattenHelper(arr){
    for(var i = 0; i < arr.length; i++){
      if(Array.isArray(arr[i])){
        flattenHelper(arr[i]);
      }
      else{
        result.push(arr[i]);
      }
    }
  }
  
  return result;
}

var arr = [[1,[9]],[[[[1]]]],[3,4],[5,[6,[7]]]];
console.log(flatten(arr));


 /**
  *                       Problem VI: Pivot
  *
  *  Prompt: Given a list of integers and a pivot index, split the list in two in regards to the pivot.
  *          Place all elements less than the element at the pivot index in the first list, and all other
  *          elements into the second list.
  *
  *  Input: A list (array), Pivot Index (integer)
  *  Ouput: A list of two lists (two arrays organized by pivot element)
  *
  *  Example:
  *
  *    Input: [1,9,4,3,5], 4
  *    Output: [[1,4,3],[5,9]]
  **/

function pivotList(arr, pivot){
  var result1 = [];
  var result2 = [];
  
  for(var i = 0; i < arr.length; i++){
    if(arr[i] <= pivot){
      result1.push(arr[i]);
    }
    else{
      result2.push(arr[i]);
    }
  }
  
  return [result1, result2];

}

function pivotListRecursion(arr, pivot){
  var temp1 = [];
  var temp2 = [];
  pivotHelper(0);
  
  function pivotHelper(position){
    if(position === arr.length){
      return; 
    }
    
    if(arr[position] <= pivot){
      temp1.push(arr[position]);
    }
    else{
      temp2.push(arr[position]);
    }
    return pivotHelper(position + 1);
  }
  
  return [temp1, temp2];
}

console.log(pivotListRecursion([1, 8, 4, 3, 5], 4));
