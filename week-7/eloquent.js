// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var roller_coaster_review= "Drop Zone sucks"
  console.log(roller_coaster_review)

var favoritefoods = prompt("What is your favorite food?");
  if (favorite-foods == "pizza")
    console.log("Hey! That's my favorite too!");
  else
    console.log("Wrong. Do better.");

// Complete one of the exercises: FizzBuzz
var number=0;
while (number < 100){
  number = number+1;
if (number%3==0)
  console.log("Fizz");
else if (number%5==0)
 console.log("Buzz");
else console.log(number);
}

var number=0;
while (number < 100){
  number = number+1;
if(number%5==0 && number%3==0)
  console.log("FizzBuzz");
else if (number%3==0)
  console.log("Fizz");
else if (number%5==0)
 console.log("Buzz");
else console.log(number);
}


// Functions

// Complete the `minimum` exercise.
function min(n1, n2) {
if (n1 <n2)
  console.log (n1);
else console.log(n2);
}
console.log(min(5, 2))

// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
 var me = {
    name: "Monique",
    age: 24,
    favoritefoods: ["pizza", "tacos", "burgers"],
    quirk: "I'm obsessed with my bucket list"
  };
console.log(me.favoritefoods[0])