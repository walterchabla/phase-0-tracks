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

// Release 1: Find a Key-Value Match
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// Declare name of the function:
// COMPARING(PARAMETER1, PARAMETER2)
// Input for the function:
// Using FOR to loop thru the oobjects using their keys
// I'm going to use an IF statement and then compare the two objects using 'hasOwnProperty(key)'.
// Output of the function:
// the function would return true if one key-value pair matches between the two objects.
// or the function should return false if no pairs match.

function comparing(object1, object2) {

  for (var key in object1 && object2) {
      if (object1.hasOwnProperty(key) === object2.hasOwnProperty(key)) {
        return console.log(true);
      } else {
        return console.log(false);
      }
  }
}

// Release 2: Generate Random Test Data
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// Declaring name of the function:
// RANDOM_WORDS(LENGTH)
// Input for the function:
// Array with random words inside,
// Use a FOR loop to loop the array for number of times ,
// Use Math.random to get random words equal to the length
// Output for the function:
// Random 3 words on a array

function random_words(integer) {
  var new_word = [];
  for (var i = 0; i < integer; i++){
    var words = ["Hello", "Space", "Lake", "Walter", "DBC", "Mac", "Dominos", "Training", "GSGGbs", "LOL", "LMAO"];
    var random = Math.floor(Math.random() * words.length);
    var word = words[random];
    new_word.push(word);
    new_word;
    }
    console.log(new_word);
}


// Driver Code:
console.log("---------------");

var phrases = ["long phrase","longest phrase","longer phrase"];
longest_word(phrases);
//var test = ["word1", "walter", "Car", "longest word"];
//longest_word(test);
console.log("---------------");

var dog = {name: 'Boby', age: 6};
var cat = {age: 8, name: 'Speedy'};
var car = {color: "red", num_doors: 2};
comparing(dog, cat);
comparing(dog, car);

console.log("---------------");

random_words(9);
random_words(6);
random_words(4);
random_words(7);
random_words(2);
random_words(5);
random_words(3);
random_words(10);
random_words(6);
random_words(4);
random_words(1);

// i cant not use longest_word with random_wwrds
//longest_word(random_words(3));