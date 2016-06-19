// function that takes and array of words or phrases and 
// returns the longest in the array
  // function receives array as parameter
  // iterate through each input to find the length of each string
  // within the iteration, compare next iteration to saved longest (current_string, longest_string variables)
  // return longest_string

function longestPhrase(phrases) {
  this.phrases = phrases;
  longestString = ""

  for (var i=0; i < phrases.length; i++) {
    if (phrases[i].length > longestString.length) {
      longestString = phrases[i];
    }
  }
  return longestString;
}

// function that compares 2 objects and returns 'true' if they 
// share a key-value pair returns 'false' if they do not
  // function receives 2 objects as parameter
  // compare keys in each object for each key
      // if there is a match keep going
      // if no match, return 'false'
  // compare values in matched keys
      // if there is a match, break and return 'true'
      // if no match, return 'false'

function comparePair(firstObject, secondObject) {
  this.firstObject = firstObject;
  this.secondObject = secondObject;

  var bool = false

  for (var key1 in firstObject) {
    for (var key2 in secondObject){
      //check if keys =
      if (key1 == key2) {
        // Check values =
        if (firstObject[key1] == secondObject[key2]) {
          bool = true
          break;
        }
      }
    }
  }
  return bool;
}


// function to create an array of some number of strings
// 1-10 characters per random strings
    // function to create array of X number of entries
      // input number as parameter
      // for every 'that number' of times
        // push function of creating random string into array
    // function to create random 1-10 char string
        // generate random number from 1-10
        // for every 'that random number' of times
          // generate random character and add to string

function randomString() {
  var stringLength = Math.ceil(Math.random() * 10);
  var newString = ""
  for (i=0; i < stringLength; i++) {
    var number = Math.floor(Math.random() * 26);
    var chr = String.fromCharCode(97+number);
    newString += chr;
  }
  return newString;
}

function randomArray(times) {
  this.times = times;
  array = [];
  for(n=0;n<times;n++) {
    array.push(randomString());
  }
return array;
}



// driver code release 2
for (x=0;x<10;x++){
  var arrayToPush = randomArray(Math.ceil(Math.random() * 5));
  console.log(arrayToPush);
  console.log(longestPhrase(arrayToPush));
}







//  Driver code release 1
//object1 = {name: "Steven", age: 54};
//object2 = {name: "Tamir", age: 54};
//console.log(comparePair(object1, object2))
//
//object1 = {name: "Steven", stage: "old"};
//object2 = {name: "Tamir", age: 54};
//console.log(comparePair(object1, object2))
//
//object1 = {name: "Steven", stage: "old", gender: "male"};
//object2 = {name: "Tamir", age: 54, gender: "male"};
//console.log(comparePair(object1, object2))





//  Driver code release 0
//var words = ["This is the longest by far", "apples", "a BANANA"];
//console.log(longestPhrase(words));
//words = ["soup", "ice cream", "salad"];
//console.log(longestPhrase(words));
//words = ["Amir", "a Mirror", "Amir or what?"];
//console.log(longestPhrase(words));

