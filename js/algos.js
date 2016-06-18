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

var words = ["This is the longest by far", "apples", "a BANANA"];
console.log(longestPhrase(words));