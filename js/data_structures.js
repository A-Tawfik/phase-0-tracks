//Driver: Sayam Kim

var colors = ["blue", "green", "pink", "orange"];
var names = ["Ed", "Jim", "Frank", "Stella"];

colors.push("cornflower blue");
names.push("Dolly");

console.log(colors);
console.log(names);

var horse = {};

for (var i = 0; i< names.length; i++) {
  horse[names[i]] = colors[i];
}

console.log(horse);

function Car(color, wheelSize, isSedan) {
  this.color = color;
  this.wheelSize = wheelSize;
  this.isSedan = isSedan;

  this.accelerate = function() { 
    if (isSedan) {
      console.log("vrooom...");
    } else {
      console.log("VROOOM!");
    }
  }
    
}

var newCar = new Car("blue", 17, false);
console.log(newCar);

newCar.accelerate();

var newCar1 = new Car("red", 22, true);
console.log(newCar1);

newCar1.accelerate();