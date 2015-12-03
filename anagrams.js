/**
 * Problem: All Anagrams
 *
 * Given a single input string, write a function that produces 
 * all possible anagrams of a string and outputs them as an array.
 * Be sure that there are no duplicates in your return array.
 *
 * What is the time complexity of your solution?
 *
 * ex: anagrams('abc');
 *     => ['abc', 'acb', 'bac', 'bca', 'cab', 'cba']
 *
 **/

function anagrams(str){
  //obj provides us constant time lookup to check if a word is already pushed into the result array
    //result holds all our unique words
  var obj = {};
  var result = [];

  //helper method with state variables
  function findAnagram(substring, word){
    //base case if the substring is empty then check to see if word has been added into
      //result array yet, if not go ahead and it to obj and push into array
    if(substring === ""){
      if(!obj[word]){
        obj[word] = true;
        result.push(word);
      }
      return;
    }
    //recursive case iterates through each letter in the substring and adds that letter
      //to the word and removes it from the substring, then calls itself
    for(var i = 0; i < substring.length; i++){
      findAnagram(substring.slice(0, i) + substring.slice(i+1, substring.length), word + substring[i]);
    }
  }

  //invoke helper method then return result at the end
  findAnagram(str, "");
  return result;
}

console.log(anagrams('cat')); // [ 'cat', 'cta', 'act', 'atc', 'tca', 'tac' ]
console.log(anagrams('dad')); // [ 'dad', 'dda', 'add' ]

//Time complexity:

//The input string length "n" is how many levels we will have in our recursive case.
//The first level, there will be n branch cases, the second level each case will branch
//off to n-1 cases, the next level will have n-2 branch cases...
// n*(n-1)*(n-2)..(2)(1) => n!
//Thus the number of cases will be n factorial
//The time complexity is O(n!) or factorial time!