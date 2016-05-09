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
console.log("---------------")
var horses = {};

for (var i = 0; horse_names[i] && colors[i]; i++){
  horses[horse_names[i]] = colors[i];
};
console.log(horses)

console.log("---------------")
function Car(color, model, doors) {
  console.log("New car:", this);
  this.color = color;
  this.model = model;
  this.doors = doors;
  this.start = function() {
    console.log("BROOM!!");
  };

  console.log("CAR CREATED");
}

var anotherCar = new Car("White", "Auidi", "2 Doors");
console.log(anotherCar);
console.log("Car model is: " + anotherCar.model + ".", "Car color is: " + anotherCar.color + ".", "Car has number of doors: " + anotherCar.doors + ".")
anotherCar.start();
