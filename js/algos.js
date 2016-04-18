 //Release 0: Find the Longest Word

 // Write a function that takes an array of words or phrases and returns the longest word in the array.
 // Declare a name for the function:
 // LONGEST_WORD(PARAMETER)
 // Input for the function:
 // Array that contains strings, we going to use a FOR loop, .LENGTH to see how long is the array. Then using an IF statement, that is going to use .LENGTH to see how long is the string, and use a comparison to print the largest string.
 // Output:
 // Prints the longest string.

function longest_word(array) {
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > 6) {
      // I got to print anything that is bigger than 6 letters, I need to change the 6 to something else?
      console.log(array[i])
    }
  }
}

var word = ["Letter", "Practice", "This is a big phrase"]
var test = ["word1", "Walter", "Car", "longest word"];
longest_word(test)
longest_word(word)
