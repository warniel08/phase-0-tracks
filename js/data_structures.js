var colors = ["blue", "yellow", "brown", "red"];
var names = ["Ed", "Martha", "Horseface", "Horsey"];

colors.push("mottled");
names.push("Stanley");

console.log(colors + names);
var horses = {};

for (var i=0; i < colors.length; i++){
 horses[names[i]] = colors[i];
}
console.log(horses);

//------------------------------------------------------
//Car function
//------------------------------------------------------

function Car(make, model, year) {
 this.make = make;
 this.model = model;
 this.year = year;

 this.honk = function() {console.log("Honk!"); };
}

var car1 = new Car("Honda", "Civic", 1998);
var car2 = new Car("Toyota", "Camry", 2008);

console.log(car1);
car1.honk();	

console.log(car2);
car2.honk();

car1Keys = Object.keys(car1);
car2Keys = Object.keys(car2);

for (var i=0; i < car1Keys.length; i++){
 //console.log(i + ": " + car1Keys[i]);
 console.log(car1Keys[i] + ": " + car1[car1Keys[i]]);
}

for (var i=0; i < car2Keys.length; i++){
 console.log(car2Keys[i] + ": " + car2[car2Keys[i]]);
}



