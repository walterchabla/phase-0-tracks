 //Release 0: Find the Longest Word
 // Write a function that takes an array of words or phrases and returns the longest word in the array.
 // Declare a name for the function:
 // LONGEST_WORD(PARAMETER)
 // Input for the function:
 // Array that contains strings, I'm going to use a FOR loop, .LENGTH to see how long is the array. Then using an IF statement, that is going to use .LENGTH to see how long is the string, and use a comparison to print the largest string.
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

// Release 1: Find a Key-Value Match
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// Declare name of the function:
// COMPARING(PARAMETER)
// Input for the function:
// I'm going to use an IF statement and then compare the two objects using boolen.
// Output of the function:
// the function would return true if one key-value pair matches between the two objects.
// or the function should return false if no pairs match.

function comparing(object1, object2) {
  // I try to qrite a function but I did not manage to compare the objects, this what I got:

  //var n = object2[n]
  //var i = object1[i]
  //if (console.log(object1[i] === object2[n])) {
    //console.log("True");
 //}else {
    //console.log("False");
    //}

  // I went online to look for imformation about javascrip and objects,
  // I was trying to use 'Object.getOwnPropertyNames' to declare an object and then use that to compare the objects but I did not manage to make this work too.
  // Its not like comparing right
  var obj1 = Object.getOwnPropertyNames(object1);
  var obj2 = Object.getOwnPropertyNames(object2);

  for (var i = 0; i < obj1.length; i++) {
    var values = obj1[values];
      if (object1[values] !== object2[values]){
        console.log("False");
      }else {
         console.log("True");
       }
  }

}


// Release 2: Generate Random Test Data
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// Declaring name of the function:
// RANDOM_WORDS(LENGTH)
// Input for the function:
// Array with random words,
// Use a for loop to loop the array for number,
// Use Math.random to get random words
// Output for the function:
// Random 3 words on a array

function random_words(integer) {
  var new_word = [];
  for (var i = 0; i < integer; i++){
    var words = ["Hello", "Space", "Lake", "Walter", "DBC", "Mac", "Dominos", "Training", "GSGGbs", "LOL", "LMAO"];
    var random = Math.floor(Math.random() * words.length);
    var word = words[random];
    new_word.push(word)
    console.log(new_word);
    }
}

// Driver Code:

var word = ["Letter", "Practice", "This is a big phrase"]
var test = ["word1", "Walter", "Car", "longest word"];
longest_word(test);
longest_word(word);

var dog = {name: 'Boby', age: 6};
var cat = {age: 8, name: 'Speedy'};
comparing(dog, cat);

random_words(2);
longest_word(random_words(10))
// It does not want to read the array in the function when longest word funtion wants tp use random words functions array.
