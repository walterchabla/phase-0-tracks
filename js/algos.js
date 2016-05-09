//Release 0: Find the Longest Word
// Write a function that takes an array of words or phrases and returns the longest word in the array.
// Declare a name for the function:
// LONGEST_WORD(PARAMETER)
// Input for the function:
// Array that contains strings, I'm going to use a FOR loop, .LENGTH to see how long is the array. Im going to use .LENGTH on each string to see how long is the string in the array, and then using an IF statement comparison to print the largest string in the array with the other strings.
// Output:
// Prints the longest string.

function longest_word(array) {
  for (var i = 0; i <= array.length; i++) {
  if (array[i + 1].length > array[i].length) {
      return console.log(array[i + 1]);
    }
  }
}

// Driver Code:
var phrases = ["long phrase","longest phrase","longer phrase"]
//var test = ["word1", "walter", "Car", "longest word"];
longest_word(phrases);
//longest_word(test);