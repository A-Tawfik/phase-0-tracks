// break up the string by its individual characters using a for loop
// save first letter into a 'new string' to be built on
// for each iteration of the loop, add the current letter plus the 'new string'
//lather, rinse, repeat

//define variables
var newStr = ""

//reverse loop
function reverse(str) {
  for (var i = 0; i < str.length; i++) {
    newStr = str[i] + newStr;
  }
  //print new string
console.log(newStr);
}

reverse("hola")