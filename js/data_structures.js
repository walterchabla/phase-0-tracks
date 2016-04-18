//release 1

var colors = ["blue", "brown", "green", "red"];
var names = ["Ed", "Ace", "Ally", "Argo"];
colors.push("white");
names.push("Galaxy");

var horse = {};
for (var i = 0; i < colors.length; i++){
  horse[colors[i]] = names[i];
};
console.log(horse)

// release 2

function Car(color,model,doors) {
  console.log("New car:", this);
  this.color = color;
  this.model = model;
  this.doors = doors;
  this.start = function() {
    console.log("Rooom!");
  };

  console.log("CAR CREATED");
}

var anotherCar = new Car("Red", "Mercedez", "2 Doors");
console.log(anotherCar);
anotherCar.start();