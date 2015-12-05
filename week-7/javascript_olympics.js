// JavaScript Olympics

// I paired with Coleby Kent on this challenge.

// This challenge took me [1.5] hours.


// Bulk Up
//Confused as to what question was asking. Returned array correctly but also added undefined. Any help would be appreciated.

var athletes = {
  "Serena Williams": "Ladies' Singles",
  "Sarah_Hughes": "Ladies' Singles",
  "Michael Phelps": "400 Butterfly",
}

function win(){
  var keys = Object.keys(athletes);
  for (var index = 0; index < keys.length; index++) {
    console.log(keys[index] + " has won " + athletes[keys[index]] + "!");
  };
};

console.log(win())


// Jumble your words

function reverse(string) {
  string = string.split("").reverse().join("")
  return string
}

console.log(reverse("!sdrow ruoy elbmuJ") === "Jumble your words!")


// 2,4,6,8

function listOfNumbers(value) {
  return (value % 2==0);
}
var filtered = [12, 5, 8, 130, 44].filter(listOfNumbers);
console.log(filtered)


// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
/* Reflection
What JavaScript knowledge did you solidify in this challenge?
  The biggest help for me was realizing that JavaScript objects aresimilar to hashes and arrays but they absolutely are not the same lol. So I really did some digging to learn the differences.
What are constructor functions?
  Constructor functions is work that has to be done outside of the object so that it can be used in multiple scripts.
How are constructors different from Ruby classes (in your research)?
  they are similar except the constructor function does not hold everything in that function the way a class does.