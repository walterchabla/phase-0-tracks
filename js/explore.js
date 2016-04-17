// Declaring a Fuction:
// reverse word, that has a parameter that takes a string.
// inside the function:
// we are going to take the string, SPLIT it, then the last letter of the string is going to be SWITCH or REVERSE to first letter and same for the other letters, finally JOIN the letters together at the end.
// output:
// to be able to return "olleh"

function reverse_word(word) {
  return word.split('').reverse().join('');
}

var new_word = reverse_word("Walter");
console.log(new_word);
// I have some help from google to write the function.

if (2 && 2) {
  console.log(new_word);
}