// break up the string by its individual characters using a for loop
// save first letter into a 'new string' to be built on
// for each iteration of the loop, add the current letter plus the 'new string'
//lather, rinse, repeat

//define variables
var newStr = ""
var reversed_str = ""

//reverse loop
function reverse(str) {
  for (var i = 0; i < str.length; i++) {
    newStr = str[i] + newStr;
  }
  //print new string
console.log(newStr);
}

if (1 + 2 == 3) {
  reversed_str = reverse("rimA si eman yM")
} else {
  console.log("no reverse for you!")
}