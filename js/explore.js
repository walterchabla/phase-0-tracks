// Declaring a Fuction:
// reverse, that has a parameter that takes a string.
// inside the function:
// we are going to take the string, SPLIT it, then the last letter of the string is going to be SWITCH or REVERSE to first letter and same for the other letters, finally JOIN the letters together at the end.
// output:
// to be able to return "olleh" if "hello was entered"

function reverse(string) {
  var str = string.split('').reverse('').join('');
  console.log(str);
}


// Test code
var reversed = reverse("hello");

if (5 == 5) {
  console.log("5 is equal to 5");
} else {
  console.log("5 is not equal to 5");
}


