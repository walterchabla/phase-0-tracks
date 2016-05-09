//Release 0: Work with Arrays

var colors = ["brown", "white", "pink", "lavender"];

var horse_names = ["Aeris", "Oberon", "Jag", "Umbra"];

// Test Code
console.log(colors);
console.log(horse_names);

colors.push("Blue with stripes");
horse_names.push("Lad");

console.log(colors);
console.log(horse_names);

//Release 1: Build an Object
var horses = {};

for (var i = 0; horse_names[i] && colors[i]; i++){
  horses[horse_names[i]] = colors[i];
};
console.log(horses)
